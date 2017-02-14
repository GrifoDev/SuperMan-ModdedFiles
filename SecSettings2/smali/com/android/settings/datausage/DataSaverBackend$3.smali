.class Lcom/android/settings/datausage/DataSaverBackend$3;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    iput-boolean p2, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get4(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->val$enabled:Z

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get2(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->val$enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x18a

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$3;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSaverBackend;->-get0(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
