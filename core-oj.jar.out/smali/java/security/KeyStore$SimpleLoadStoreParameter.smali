.class Ljava/security/KeyStore$SimpleLoadStoreParameter;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleLoadStoreParameter"
.end annotation


# instance fields
.field private final protection:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/KeyStore$SimpleLoadStoreParameter;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$SimpleLoadStoreParameter;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
