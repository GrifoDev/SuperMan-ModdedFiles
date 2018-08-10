.class Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;
.super Ljava/lang/Thread;
.source "NfcListenStatusChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcTypeScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
