.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic val$list:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V
    .locals 2

    .prologue
    .line 1011
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p2, "val$list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    .line 1011
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1017
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v2}, Ljavax/security/auth/Subject$SecureSet;->-get0(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1018
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1021
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1022
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 1024
    :try_start_0
    new-instance v2, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1025
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    iget-object v4, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1026
    iget-object v4, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v4, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v4}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v4

    .line 1024
    invoke-direct {v2, v3, v4}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :cond_1
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1029
    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1037
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v1, v1, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v1}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1039
    const-string/jumbo v2, "Subject.is.read.only"

    .line 1038
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1042
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1043
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1044
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v1}, Ljavax/security/auth/Subject$SecureSet;->-get0(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1052
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1056
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1035
    return-void

    .line 1046
    :pswitch_0
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0

    .line 1049
    :pswitch_1
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
