.class public final enum Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
.super Ljava/lang/Enum;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field public static final enum NONE:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field public static final enum OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field public static final enum OMADM_SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field public static final enum SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field public static final enum SOAP_OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const-string/jumbo v1, "OMADM"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const-string/jumbo v1, "SOAP"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const-string/jumbo v1, "OMADM_SOAP"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM_SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const-string/jumbo v1, "SOAP_OMADM"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP_OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->NONE:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM_SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP_OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->NONE:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    .locals 1

    const-class v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    .locals 1

    sget-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-object v0
.end method
