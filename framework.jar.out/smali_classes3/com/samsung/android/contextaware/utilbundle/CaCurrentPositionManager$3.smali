.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;
.super Landroid/content/BroadcastReceiver;
.source "CaCurrentPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.contextaware.SLOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    return-void
.end method
