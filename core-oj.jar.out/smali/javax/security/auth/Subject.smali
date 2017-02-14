.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$AuthPermissionHolder;,
        Ljavax/security/auth/Subject$ClassSet;,
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

.field private static final PRINCIPAL_SET:I = 0x1

.field private static final PRIV_CREDENTIAL_SET:I = 0x3

.field private static final PUB_CREDENTIAL_SET:I = 0x2

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field transient privCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient pubCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    sput-object v0, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid.null.input.s."

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_0

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return-void
.end method

.method private static createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
    .locals 1

    new-instance v0, Ljavax/security/auth/Subject$2;

    invoke-direct {v0, p0, p1}, Ljavax/security/auth/Subject$2;-><init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method private getCredHashCode(Ljava/lang/Object;)I
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "invalid.null.AccessControlContext.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    if-ne p0, p1, :cond_1

    return v7

    :cond_1
    instance-of v4, p1, Ljavax/security/auth/Subject;

    if-eqz v4, :cond_5

    move-object v0, p1

    nop

    nop

    iget-object v5, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    iget-object v5, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v6

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    iget-object v5, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v5

    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v5

    iget-object v4, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    return v7

    :cond_5
    return v6
.end method

.method public getPrincipals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget-object v5, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    invoke-interface {v1}, Ljava/security/Principal;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_0

    :cond_0
    monitor-exit v5

    iget-object v5, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/security/auth/Subject;->getCredHashCode(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return v0

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/security/auth/Subject;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 10

    const-string/jumbo v7, "Subject."

    invoke-static {v7}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    iget-object v8, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Principal."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_0
    monitor-exit v8

    iget-object v8, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Public.Credential."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    monitor-exit v8

    if-eqz p1, :cond_3

    iget-object v8, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v8

    :try_start_2
    iget-object v7, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-eqz v7, :cond_2

    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Private.Credential."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    goto :goto_2

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_0
    move-exception v5

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Private.Credential.inaccessible."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    :cond_2
    monitor-exit v8

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7
.end method
