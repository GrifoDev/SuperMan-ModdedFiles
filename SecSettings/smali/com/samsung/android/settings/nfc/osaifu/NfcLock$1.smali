.class Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcLock;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "[NfcLock]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive - Action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcLock;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->-wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V

    return-void
.end method
