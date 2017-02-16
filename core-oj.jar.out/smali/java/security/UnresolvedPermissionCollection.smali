.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient perms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/UnresolvedPermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 148
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "permissions"

    const-class v3, Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 147
    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 201
    .local v2, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v7, "permissions"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 202
    .local v4, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    .line 205
    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 206
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    .line 209
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v8, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v3, Ljava/util/Hashtable;

    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    .line 167
    .local v3, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 169
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 172
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    new-instance v6, Ljava/util/Vector;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    .line 173
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 173
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    .restart local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v2

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    monitor-exit p0

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v4

    .line 184
    .local v4, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v7, "permissions"

    invoke-virtual {v4, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 159
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 5
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 76
    instance-of v2, p1, Ljava/security/UnresolvedPermission;

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 79
    nop

    nop

    .line 82
    .local v0, "up":Ljava/security/UnresolvedPermission;
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    if-nez v1, :cond_1

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 89
    monitor-enter v1

    .line 90
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 74
    return-void

    .line 82
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 89
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 127
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v0

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    monitor-exit p0

    .line 133
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method getUnresolvedPermissions(Ljava/security/Permission;)Ljava/util/List;
    .locals 2
    .param p1, "p"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Permission;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/UnresolvedPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
