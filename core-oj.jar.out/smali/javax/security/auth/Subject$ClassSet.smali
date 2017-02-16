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
    .param p1, "this$0"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p3, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1315
    iput p2, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    .line 1316
    iput-object p3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    .line 1317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    .line 1319
    packed-switch p2, :pswitch_data_0

    .line 1327
    iget-object v0, p1, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    monitor-exit v0

    .line 1314
    return-void

    .line 1321
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

    .line 1324
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

    .line 1327
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateSet()V
    .locals 7

    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    const/4 v6, 0x3

    .line 1334
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    packed-switch v3, :pswitch_data_0

    .line 1342
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1349
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1351
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-ne v3, v6, :cond_1

    .line 1353
    new-instance v3, Ljavax/security/auth/Subject$ClassSet$1;

    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$ClassSet$1;-><init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V

    .line 1352
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1361
    .local v1, "next":Ljava/lang/Object;
    :goto_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-eq v3, v6, :cond_2

    .line 1363
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1336
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "next":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_0

    .line 1339
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :pswitch_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_0

    .line 1359
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "next":Ljava/lang/Object;
    goto :goto_1

    .line 1366
    :cond_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1367
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_3

    .line 1368
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1370
    iget-object v5, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    .line 1368
    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1372
    :cond_3
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1332
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_4
    return-void

    .line 1334
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

    .prologue
    .line 1388
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1389
    new-instance v0, Ljava/text/MessageFormat;

    .line 1390
    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    .line 1389
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, "form":Ljava/text/MessageFormat;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1392
    .local v1, "source":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    .end local v0    # "form":Ljava/text/MessageFormat;
    .end local v1    # "source":[Ljava/lang/Object;
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

    .prologue
    .line 1383
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1379
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
