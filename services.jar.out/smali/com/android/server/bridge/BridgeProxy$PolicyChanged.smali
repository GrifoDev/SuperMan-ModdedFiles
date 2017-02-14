.class Lcom/android/server/bridge/BridgeProxy$PolicyChanged;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyChanged"
.end annotation


# instance fields
.field public personaId:I

.field public policyName:Ljava/lang/String;

.field public syncerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->personaId:I

    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->syncerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy$PolicyChanged;->policyName:Ljava/lang/String;

    return-void
.end method
