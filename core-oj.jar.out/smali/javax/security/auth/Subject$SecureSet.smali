.class Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field subject:Ljavax/security/auth/Subject;

.field private which:I


# direct methods
.method static synthetic -get0(Ljavax/security/auth/Subject$SecureSet;)I
    .locals 1

    iget v0, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 972
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 973
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "this$0"

    const-class v3, Ljavax/security/auth/Subject;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 974
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "elements"

    const-class v3, Ljava/util/LinkedList;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 975
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "which"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 972
    sput-object v0, Ljavax/security/auth/Subject$SecureSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 962
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/Subject;I)V
    .locals 1
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I

    .prologue
    .line 993
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 994
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 995
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 996
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 993
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V
    .locals 1
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/Subject;",
            "I",
            "Ljava/util/Set",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1000
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1001
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 1002
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 999
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v2, 0x0

    .line 1297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1298
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "this$0"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1299
    const-string/jumbo v1, "elements"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1300
    const-string/jumbo v1, "which"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 1295
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1282
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1283
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1287
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1288
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v2, "this$0"

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    const-string/jumbo v2, "elements"

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1290
    const-string/jumbo v2, "which"

    iget v3, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1291
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1278
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v1}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1065
    const-string/jumbo v2, "Subject.is.read.only"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1069
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1070
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    packed-switch v1, :pswitch_data_0

    .line 1078
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1083
    :cond_1
    :goto_0
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    packed-switch v1, :pswitch_data_1

    .line 1096
    :cond_2
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1097
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1072
    :pswitch_0
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0

    .line 1075
    :pswitch_1
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0

    .line 1085
    :pswitch_2
    instance-of v1, p1, Ljava/security/Principal;

    if-nez v1, :cond_2

    .line 1086
    new-instance v1, Ljava/lang/SecurityException;

    .line 1087
    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    .line 1086
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1083
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1249
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1250
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1262
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1256
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$6;

    invoke-direct {v2, p0, v0}, Ljavax/security/auth/Subject$SecureSet$6;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1255
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 1248
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v6, 0x1

    .line 1132
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1133
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1135
    iget v3, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1159
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v1, :cond_3

    .line 1160
    if-nez p1, :cond_0

    .line 1161
    return v6

    .line 1145
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1146
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    .line 1147
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1149
    iget-object v5, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    .line 1147
    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1152
    :cond_2
    new-instance v3, Ljavax/security/auth/Subject$SecureSet$3;

    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$SecureSet$3;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1151
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 1163
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    return v6

    .line 1167
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1011
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v1, Ljavax/security/auth/Subject$SecureSet$1;

    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v4, 0x1

    .line 1104
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1105
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1107
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1118
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v1, :cond_2

    .line 1119
    if-nez p1, :cond_0

    .line 1120
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1121
    return v4

    .line 1111
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    invoke-direct {v2, p0, v0}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1110
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1125
    return v4

    .line 1128
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 1173
    .local v2, "modified":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1174
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1176
    iget v5, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 1177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1187
    .local v3, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1188
    .local v0, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1190
    .local v4, "o":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 1191
    if-nez v4, :cond_1

    .line 1192
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1193
    const/4 v2, 0x1

    .line 1194
    goto :goto_0

    .line 1180
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v5, Ljavax/security/auth/Subject$SecureSet$4;

    invoke-direct {v5, p0, v1}, Ljavax/security/auth/Subject$SecureSet$4;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1179
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 1196
    .restart local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1198
    const/4 v2, 0x1

    .line 1199
    goto :goto_0

    .line 1203
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_4
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 1209
    .local v2, "modified":Z
    const/4 v5, 0x0

    .line 1210
    .local v5, "retain":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1211
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1212
    const/4 v5, 0x0

    .line 1214
    iget v6, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 1215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1225
    .local v3, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1226
    .local v0, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1228
    .local v4, "o":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 1229
    if-nez v4, :cond_1

    .line 1230
    const/4 v5, 0x1

    .line 1239
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    :goto_2
    if-nez v5, :cond_0

    .line 1240
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1241
    const/4 v5, 0x0

    .line 1242
    const/4 v2, 0x1

    goto :goto_0

    .line 1218
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    :cond_3
    new-instance v6, Ljavax/security/auth/Subject$SecureSet$5;

    invoke-direct {v6, p0, v1}, Ljavax/security/auth/Subject$SecureSet$5;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1217
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 1233
    .restart local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1234
    const/4 v5, 0x1

    .line 1235
    goto :goto_2

    .line 1245
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    return v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1006
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
