.class final Lsun/security/ec/ECKeyFactory$2;
.super Ljava/lang/Object;
.source "ECKeyFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ec/ECKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/security/ec/ECKeyFactory$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    const-string/jumbo v1, "KeyFactory.EC"

    const-class v2, Lsun/security/ec/ECKeyFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    const-string/jumbo v1, "AlgorithmParameters.EC"

    const-class v2, Lsun/security/ec/ECParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$2;->val$p:Ljava/security/Provider;

    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters.1.2.840.10045.2.1"

    const-string/jumbo v2, "EC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
