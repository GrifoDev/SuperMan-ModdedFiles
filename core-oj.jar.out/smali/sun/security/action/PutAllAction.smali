.class public Lsun/security/action/PutAllAction;
.super Ljava/lang/Object;
.source "PutAllAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
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
.field private final map:Ljava/util/Map;

.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/util/Map;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lsun/security/action/PutAllAction;->provider:Ljava/security/Provider;

    .line 48
    iput-object p2, p0, Lsun/security/action/PutAllAction;->map:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lsun/security/action/PutAllAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lsun/security/action/PutAllAction;->provider:Ljava/security/Provider;

    iget-object v1, p0, Lsun/security/action/PutAllAction;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
