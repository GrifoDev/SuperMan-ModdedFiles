.class public final enum Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;
.super Ljava/lang/Enum;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredentialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

.field public static final enum AKA:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

.field public static final enum SIM:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

.field public static final enum TLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

.field public static final enum TTLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    const-string/jumbo v1, "TTLS"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->TTLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    const-string/jumbo v1, "TLS"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->TLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    const-string/jumbo v1, "SIM"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->SIM:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    const-string/jumbo v1, "AKA"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->AKA:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->TTLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->TLS:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->SIM:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->AKA:Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;
    .locals 1

    const-class v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;
    .locals 1

    sget-object v0, Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20Manager$CredentialType;

    return-object v0
.end method
