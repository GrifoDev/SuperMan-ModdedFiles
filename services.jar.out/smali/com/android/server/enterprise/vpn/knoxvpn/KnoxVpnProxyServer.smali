.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.super Ljava/lang/Thread;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_DETECTION_FAILED:I = -0x2

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE:I = 0x0

.field private static final AUTHENTICATION_IN_PROGRESS_FROM_STATE:I = 0x2

.field private static final AUTHENTICATION_NOT_REQUIRED:I = -0x1

.field private static final AUTHENTICATION_REQUIRED_ADD:I = 0x1

.field private static final BUNDLE_ENTRY_BASE64_ENCODE:Ljava/lang/String; = "base64credentials"

.field private static final BUNDLE_ENTRY_PASSWORD:Ljava/lang/String; = "password"

.field private static final BUNDLE_ENTRY_USERNAME:Ljava/lang/String; = "username"

.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z

.field private static final ERROR_BACK_CODE:I = -0x3

.field private static final ERROR_CANCEL_CODE:I = -0x2

.field private static final ERROR_INVALID_CRED_CODE:I = -0x4

.field private static final ERROR_RETURN_CODE:I = -0x1

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "HTTP/1.1 500 Internal Server Error\r\n"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final INVALID_FD:I = -0x1

.field private static final NO_ERROR:I = 0x0

.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field private static final PROXY_AUTHENTICATION_ACTION:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-action"

.field private static final PROXY_AUTHENTICATION_RESULT:Ljava/lang/String; = "vpn.knoxvpn.proxy-authentication-result"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProxyServer"


# instance fields
.field private CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field private USER_PROXY_CREDENTIAL:Ljava/lang/String;

.field private authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;",
            ">;"
        }
    .end annotation
.end field

.field private credentialSyncObject:Ljava/lang/Object;

.field private isCredentialsPredefined:Z

.field private mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

.field private mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field private stateSyncObject:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->_onCredentialReceived(Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->abortAllWaitingThreads()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->abortRequest(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authorizeWaitingThreads(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isAuthenticationRequired(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->initializeHandlerThread()V

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isproxyCredentialsPreDefined()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    :cond_0
    return-void
.end method

.method private _getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In _getRequiredAuthenticationType: read line = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v3, "Proxy-Authenticate:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In _getRequiredAuthenticationType: ProxyAuth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string/jumbo v3, "HTTP/1."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string/jumbo v4, "407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In _getRequiredAuthenticationType: authentication retuired = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In _getRequiredAuthenticationType: out of loop. retValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private _onCredentialReceived(Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "PROFILE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "RETURN_BUNDLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v2, "RESULT"

    const/4 v3, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v2, "THREAD_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "vpn.knoxvpn.proxy-authentication-result"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    packed-switch v15, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Cancel error received from the UIDialog. Breaking and aborting all threads."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    :cond_2
    if-nez v10, :cond_3

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, ", received bundle null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "base64credentials"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_4

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, ". Invalid/null threadId"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void

    :cond_4
    if-eqz v19, :cond_5

    if-nez v13, :cond_9

    :cond_5
    :goto_1
    :try_start_0
    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "callback due to null username/password/base64"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    if-nez v17, :cond_a

    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateCache == null for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "authentication return for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " since cache is null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_6

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v11

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Remote exception occured during callback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, ": Verifying again if credentials are correct..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v2, 0x2

    :try_start_2
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getUrlStringForAuth()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v18, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHttpVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v18, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getPort()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v2, :cond_b

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "In _onCredentialReceived: mAuthenticator = null. Aborting this thread."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    const-string/jumbo v3, "HTTP/1.1 500 Internal Server Error\r\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v12

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Exception occured during callback"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v16

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    :goto_4
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v11

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Error occured while trying to throw the retry proxy authentication dialog to the user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getPort()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-object/from16 v0, v18

    invoke-interface {v2, v4, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-authentication failed for threadID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ". Restarting UI activity with callback"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Resetting connection to server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    if-eqz p2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onFail(I)V

    :cond_c
    return-void

    :cond_d
    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "Re-authentication Success. Sending to dialog app."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_e
    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, ": Re-Verification success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLjava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AuthenticationState.AUTHORIZED? =  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private abortAllWaitingThreads()V
    .locals 10

    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "Aborting all threads."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v3

    const-string/jumbo v2, "HTTP/1.1 500 Internal Server Error\r\n"

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing from cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing from cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v6

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing from cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v6

    :cond_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In abortAllWaitingThreads: resetting state to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private abortRequest(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "KnoxVpnProxyServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Aborting this request due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HTTP/1.1 500 Internal Server Error\r\n"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private authorizeWaitingThreads(Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLjava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeServerSocket(Ljava/net/Socket;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KnoxVpnProxyServer"

    const-string/jumbo v2, "Exception occured while closing the serverSocket "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateRandomNumber()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getMarkForInterface(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The host name to resolve is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/system/StructAddrinfo;

    invoke-direct {v2}, Landroid/system/StructAddrinfo;-><init>()V

    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v6, v2, Landroid/system/StructAddrinfo;->ai_flags:I

    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v6, v2, Landroid/system/StructAddrinfo;->ai_family:I

    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v6, v2, Landroid/system/StructAddrinfo;->ai_socktype:I

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p1, v2, v3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v5, v6

    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The resolved host address is a ipv4 address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "Exception occured while trying to resolve the address for the host "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->authenticationStateBridge:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getAuthenticator(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v2, :cond_1

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "In getAuthenticator: Resetting connection to server."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    const/4 v0, 0x0

    return-object v4

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    return-object v2

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    const/4 v0, 0x0

    throw v2
.end method

.method private getConfiguredUser()I
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v0

    const-string/jumbo v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCredentialsActivity for userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object v0
.end method

.method private getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object v0
.end method

.method private getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_0
.end method

.method private getRequiredAuthenticationType(Ljava/net/Socket;[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "In getRequiredAuthenticationType"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HEAD "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p2

    if-le v6, v8, :cond_2

    aget-object v6, p2, v9

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p2

    if-le v6, v8, :cond_3

    aget-object v6, p2, v8

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Connection: keep-alive"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Proxy-Connection: keep-alive"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sending line to determine auth type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->_getRequiredAuthenticationType(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v6, "Basic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "Returning authType Basic"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    invoke-direct {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;-><init>()V

    :goto_3
    return-object v4

    :pswitch_0
    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v3, 0x3

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    invoke-direct {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;-><init>(I)V

    return-object v4

    :cond_2
    const/4 v6, 0x0

    aget-object v6, p2, v6

    goto/16 :goto_1

    :cond_3
    aget-object v6, p2, v9

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v6, "NTLM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "Returning authType NTLM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    invoke-direct {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;-><init>(I)V

    goto :goto_3

    :cond_5
    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "Returning authType None!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$NoCredentialAuthenticator;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    if-nez v7, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The inet4Address of the interface is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/net/InetSocketAddress;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The socket is bounded to the local address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v5}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Proxy Type: The socket is binded to the interface "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "for the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnType()I

    move-result v9

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getMarkForInterface(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(IIILjava/lang/String;)V

    if-eqz p1, :cond_6

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The socket is bounded to the local address 2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v4, v5

    :goto_0
    return-object v4

    :cond_4
    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Proxy Type:invalid interface name, binding to the interface failed for the profile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    return-object v12

    :cond_5
    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Proxy Type:invalid socket, binding to the interface failed for the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    return-object v12

    :cond_6
    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dns resolution failed for the proxy server added to the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v12

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string/jumbo v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error occured while trying to connect to the remote host for the profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_1
.end method

.method private getUserCredential()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method private initializeHandlerThread()V
    .locals 3

    const-string/jumbo v0, "KnoxVpnProxyServer"

    const-string/jumbo v1, "In initializeHandlerThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ProxyAuthenticationHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    return-void
.end method

.method private isAuthenticationRequired(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "Returning AUTHENTICATION_IN_PROGRESS_FROM_STATE without processing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v5, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthenticator(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    const/4 v4, -0x2

    invoke-direct {v3, p0, v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    instance-of v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;

    if-eqz v3, :cond_4

    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "*****************  Authentication type authenticator and NOT AUTHORIZED ****************"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v5, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-interface {v3, v0, v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "CREDENTIAL_PRESENT_NOT_AUTHORIZED set. Resetting to AUTHORIZED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    :cond_5
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "Error with pre-defined credentials. Nothing to do."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_7
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    invoke-interface {v3, v5, v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3

    :cond_9
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;I)V

    return-object v3
.end method

.method private isKeyguardLocked()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getConfiguredUser()I

    move-result v0

    const/16 v5, 0x64

    if-lt v0, v5, :cond_2

    const/16 v5, 0xc8

    if-gt v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    return v4

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    return v4
.end method

.method private isSocketOperational(Ljava/net/Socket;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxVpnProxyServer"

    const-string/jumbo v3, "checkIfSocketOperational Exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private processPredefinedCredentials(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .locals 6

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "check proxyCredentialsPreDefined is true."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isCredentialsPredefined:Z

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setUserCredential(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : Authstate= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processPredefinedCredentials : credentials= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendMessageToHandler(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendUIIntent(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getConfiguredUser()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "vpn.knoxvpn.proxy-authentication-action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.vpndialogs"

    const-string/jumbo v3, "com.android.vpndialogs.KnoxVpnProxyLoginActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "THREAD_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "PROFILE_NAME"

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stateSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->CURRENT_AUTH_STATE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setPort(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    return-void
.end method

.method private setUserCredential(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->credentialSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->USER_PROXY_CREDENTIAL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNTLMType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "NTLM "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initial ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "NTLMType2Message is not in expected format"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final ntlm message is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxVpnProxyServer"

    const-string/jumbo v4, "Exception occured while trying to get the Type3Message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mPort:I

    return v0
.end method

.method public handleScreenUnlock()V
    .locals 2

    const-string/jumbo v0, "KnoxVpnProxyServer"

    const-string/jumbo v1, "handleScreenUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KnoxVpnProxyServer"

    const-string/jumbo v1, "AuthenticationState.AUTHORIZATION_IN_PROGRESS. Starting UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendUIIntent(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public onCredentialReceive(Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "KnoxVpnProxyServer"

    const-string/jumbo v2, "In onCredentialReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setCurrentAuthState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendMessageToHandler(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restartServer()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->stopServer()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startServer()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v4, :cond_0

    iput-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-interface {v4, v5, v8, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error occured while accepting the packets from the local proxy port for the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured while trying to fetch the list of uid added to the profile during starting the local server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-interface {v4, v5, v8, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v4, "KnoxVpnProxyServer"

    const-string/jumbo v5, "Exception occured while trying to close the socket"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected declared-synchronized startCredentialsActivity(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getCurrentAuthState()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendUIIntent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startServer()I
    .locals 5

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The local port assigned for PAC proxy usage and for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->setPort(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to start proxy server for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;->updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopServer()V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mIsRunning:Z

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to stop proxy server for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "KnoxVpnProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw v1

    :catch_3
    move-exception v0

    const-string/jumbo v2, "KnoxVpnProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured while trying to fetch the list of uid added to the profile during stopping the local server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method protected updatePermissionForAppsToaccessLocalHost(ILjava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v9, "KnoxVpnProxyServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception occurred while trying to apply rules to access local host for the vpn profile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToDenyAccessToLocalHost(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v11

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToCreateDownloadChain(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v11, "com.android.providers.downloads"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowDownloadManager(Ljava/util/HashSet;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v11

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToMarkDownloadManagerPackets(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfActiveUsers()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v12, "com.android.providers.downloads"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowDownload(II)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToDenyAccessToLocalHost(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v11

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getEnableIPv6()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->rulesToDeleteDownloadChain(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
