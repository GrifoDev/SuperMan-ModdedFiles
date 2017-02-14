.class Ljavax/security/auth/Subject$ClassSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavax/security/auth/Subject;

.field private which:I


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    iput-object p3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    packed-switch p2, :pswitch_data_0

    iget-object v0, p1, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    monitor-exit v0

    return-void

    :pswitch_0
    iget-object v0, p1, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_1
    iget-object v0, p1, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_2
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateSet()V
    .locals 7

    const/4 v6, 0x3

    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-ne v3, v6, :cond_1

    new-instance v3, Ljavax/security/auth/Subject$ClassSet$1;

    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$ClassSet$1;-><init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_3
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/text/MessageFormat;

    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
