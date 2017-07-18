.class Lsun/security/ssl/ServerHandshaker$2;
.super Ljava/lang/Object;
.source "ServerHandshaker.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/ServerHandshaker;->setupKerberosKeys()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<[",
        "Ljavax/crypto/SecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/ssl/ServerHandshaker;

.field final synthetic val$acc:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Lsun/security/ssl/ServerHandshaker;Ljava/security/AccessControlContext;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/ServerHandshaker$2;->this$0:Lsun/security/ssl/ServerHandshaker;

    iput-object p2, p0, Lsun/security/ssl/ServerHandshaker$2;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/ServerHandshaker$2;->run()[Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker$2;->val$acc:Ljava/security/AccessControlContext;

    invoke-static {v0}, Lsun/security/ssl/Krb5Helper;->getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
