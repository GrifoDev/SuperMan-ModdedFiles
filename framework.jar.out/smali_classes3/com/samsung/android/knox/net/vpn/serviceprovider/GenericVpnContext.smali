.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final CONNECTING:Z = true

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

    const-string/jumbo v0, "GenericVpnContext"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method


# virtual methods
.method public enableMetaData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method

.method public getVPNProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getVPNState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return v0
.end method

.method public isMetaEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return v0
.end method

.method public setGenericVpnParams(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return-void
.end method
