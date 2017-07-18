.class final Ljava/security/KeyStore$Builder$1;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private volatile getCalled:Z

.field final synthetic val$keyStore:Ljava/security/KeyStore;

.field final synthetic val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    iput-object p1, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
