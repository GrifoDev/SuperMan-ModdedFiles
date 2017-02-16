.class Lcom/android/systemui/wifi/WifiStatusReceiver$3;
.super Ljava/lang/Object;
.source "WifiStatusReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wifi/WifiStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

.field final synthetic val$configuredNetworks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$3;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    iput-object p2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$3;->val$configuredNetworks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$3;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$3;->val$configuredNetworks:Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
