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

    .prologue
    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    .line 134
    sput-object v0, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 157
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 159
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 161
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 154
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "readOnly"    # Z
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

    .prologue
    .line 199
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 203
    if-eqz p2, :cond_0

    .line 204
    if-nez p3, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 207
    const-string/jumbo v1, "invalid.null.input.s."

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    if-eqz p4, :cond_0

    .line 209
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 210
    const/4 v1, 0x1

    .line 209
    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 211
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 212
    const/4 v1, 0x2

    .line 211
    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 213
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 214
    const/4 v1, 0x3

    .line 213
    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 215
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 200
    return-void
.end method

.method private static createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p1, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 546
    new-instance v0, Ljavax/security/auth/Subject$2;

    invoke-direct {v0, p0, p1}, Ljavax/security/auth/Subject$2;-><init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V

    .line 545
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
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

    .prologue
    .line 343
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 344
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 345
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 347
    :cond_0
    if-nez p1, :cond_1

    .line 348
    new-instance v2, Ljava/lang/NullPointerException;

    .line 349
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 358
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 356
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
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

    .prologue
    .line 402
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 403
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 404
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 407
    :cond_0
    if-nez p1, :cond_1

    .line 408
    new-instance v2, Ljava/lang/NullPointerException;

    .line 409
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 417
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 415
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
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

    .prologue
    .line 456
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 457
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 458
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 461
    :cond_0
    if-nez p1, :cond_1

    .line 462
    new-instance v2, Ljava/lang/NullPointerException;

    .line 463
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_1
    if-nez p2, :cond_2

    .line 469
    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 475
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 473
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2
    move-object v0, p2

    .line 470
    goto :goto_0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
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

    .prologue
    .line 520
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 521
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 522
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 525
    :cond_0
    if-nez p1, :cond_1

    .line 526
    new-instance v2, Ljava/lang/NullPointerException;

    .line 527
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_1
    if-nez p2, :cond_2

    .line 532
    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 538
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 536
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2
    move-object v0, p2

    .line 533
    goto :goto_0
.end method

.method private getCredHashCode(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 925
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "ise":Ljava/lang/IllegalStateException;
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
    .param p0, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 286
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 287
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 290
    :cond_0
    if-nez p0, :cond_1

    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    .line 292
    const-string/jumbo v2, "invalid.null.AccessControlContext.provided"

    .line 291
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_1
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;)V

    .line 296
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 952
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 951
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 954
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 953
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 945
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    .line 937
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 935
    return-void

    .line 936
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 775
    if-nez p1, :cond_0

    .line 776
    return v6

    .line 778
    :cond_0
    if-ne p0, p1, :cond_1

    .line 779
    return v7

    .line 781
    :cond_1
    instance-of v4, p1, Ljavax/security/auth/Subject;

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 783
    nop

    nop

    .line 787
    .local v0, "that":Ljavax/security/auth/Subject;
    iget-object v5, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    .line 789
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    monitor-exit v5

    .line 791
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 792
    return v6

    .line 787
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 796
    .restart local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_2
    iget-object v5, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 798
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    .line 800
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 801
    return v6

    .line 796
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 805
    .restart local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_3
    iget-object v5, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 807
    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .local v2, "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    .line 809
    iget-object v4, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 810
    return v6

    .line 805
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 812
    .restart local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_4
    return v7

    .line 814
    .end local v0    # "that":Ljavax/security/auth/Subject;
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
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

    .prologue
    .line 577
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

    .prologue
    .line 604
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    .line 606
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
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

    .prologue
    .line 671
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

    .prologue
    .line 743
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 744
    new-instance v0, Ljava/lang/NullPointerException;

    .line 745
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
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

    .prologue
    .line 631
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

    .prologue
    .line 698
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    .line 700
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, "hashCode":I
    iget-object v5, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    .line 904
    :try_start_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 905
    .local v2, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    .line 907
    .local v1, "p":Ljava/security/Principal;
    invoke-interface {v1}, Ljava/security/Principal;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_0

    .end local v1    # "p":Ljava/security/Principal;
    :cond_0
    monitor-exit v5

    .line 911
    iget-object v5, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 912
    :try_start_1
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 913
    .local v3, "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 914
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/security/auth/Subject;->getCredHashCode(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_1

    .line 903
    .end local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .restart local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    monitor-exit v5

    .line 917
    return v0

    .line 911
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 240
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 244
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/security/auth/Subject;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 10
    .param p1, "includePrivateCredentials"    # Z

    .prologue
    .line 835
    const-string/jumbo v7, "Subject."

    invoke-static {v7}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 836
    .local v4, "s":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 838
    .local v6, "suffix":Ljava/lang/String;
    iget-object v8, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v8

    .line 839
    :try_start_0
    iget-object v7, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 840
    .local v3, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 841
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    .line 842
    .local v1, "p":Ljava/security/Principal;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Principal."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 843
    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 842
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 843
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 842
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    .end local v1    # "p":Ljava/security/Principal;
    :cond_0
    monitor-exit v8

    .line 847
    iget-object v8, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v8

    .line 848
    :try_start_1
    iget-object v7, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 849
    .local v2, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 850
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 851
    .local v0, "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 852
    const-string/jumbo v9, ".Public.Credential."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 853
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 853
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 838
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :cond_1
    monitor-exit v8

    .line 857
    if-eqz p1, :cond_3

    .line 858
    iget-object v8, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v8

    .line 859
    :try_start_2
    iget-object v7, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 860
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-eqz v7, :cond_2

    .line 862
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 863
    .restart local v0    # "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 864
    const-string/jumbo v9, ".Private.Credential."

    .line 863
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 865
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 863
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 866
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 863
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    goto :goto_2

    .line 847
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 867
    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 868
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 869
    const-string/jumbo v9, ".Private.Credential.inaccessible."

    .line 868
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_2
    monitor-exit v8

    .line 875
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

    .line 858
    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7
.end method
