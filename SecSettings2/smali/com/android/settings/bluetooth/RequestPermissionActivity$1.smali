.class Lcom/android/settings/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-get0(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-get1(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-wrap0(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_1
    return-void
.end method
