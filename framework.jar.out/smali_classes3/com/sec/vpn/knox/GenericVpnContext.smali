.class public Lcom/sec/vpn/knox/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final CONNECTING:Z = true

.field private static final CONTAINER_VPN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_CONTAINER_VPN"

.field public static final DISCONNECTING:Z = false

.field public static final META_DISABLED:Z = false

.field public static final META_ENABLED:Z = true

.field public static final PER_APP_VPN:Z = false

.field public static final SYSTEM_VPN:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEnableMetaHeader:Z

.field private mIsConnecting:Z

.field private mProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "GenericVpnContext"

    sput-object v0, Lcom/sec/vpn/knox/GenericVpnContext;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mIsConnecting:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mEnableMetaHeader:Z

    .line 76
    return-void
.end method


# virtual methods
.method public enableMetaData(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mEnableMetaHeader:Z

    .line 101
    return-void
.end method

.method public getVPNProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getVPNState()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mIsConnecting:Z

    return v0
.end method

.method public isMetaEnabled()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mEnableMetaHeader:Z

    return v0
.end method

.method public setGenericVpnParams(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "isConnecting"    # Z

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/sec/vpn/knox/GenericVpnContext;->mIsConnecting:Z

    .line 88
    return-void
.end method
