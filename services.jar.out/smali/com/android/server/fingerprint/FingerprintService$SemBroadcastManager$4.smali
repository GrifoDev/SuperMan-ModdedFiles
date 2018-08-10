.class Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->add(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->handleAction(Landroid/content/Intent;)V

    return-void
.end method
