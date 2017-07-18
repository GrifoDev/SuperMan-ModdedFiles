.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static theAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private requestingAuthType:Ljava/net/Authenticator$RequestorType;

.field private requestingHost:Ljava/lang/String;

.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingScheme:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    iput-object p0, v0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    iput-object p1, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    iput p2, v0, Ljava/net/Authenticator;->requestingPort:I

    iput-object p3, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    iput-object p4, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    iput-object p5, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    iput-object p6, v0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    iput-object p7, v0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public static requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/net/NetPermission;

    const-string/jumbo v3, "requestPasswordAuthentication"

    invoke-direct {v1, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    sget-object v0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-direct {v0}, Ljava/net/Authenticator;->reset()V

    iput-object p0, v0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    iput p1, v0, Ljava/net/Authenticator;->requestingPort:I

    iput-object p2, v0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    iput-object p3, v0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    iput-object p4, v0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/Authenticator;->requestingPort:I

    iput-object v1, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    sget-object v0, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/net/Authenticator;)V
    .locals 4

    const-class v3, Ljava/net/Authenticator;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/net/NetPermission;

    const-string/jumbo v2, "setDefaultAuthenticator"

    invoke-direct {v0, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    sput-object p0, Ljava/net/Authenticator;->theAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingHost:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    iget v0, p0, Ljava/net/Authenticator;->requestingPort:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingPrompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingSite:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingURL:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->requestingAuthType:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
