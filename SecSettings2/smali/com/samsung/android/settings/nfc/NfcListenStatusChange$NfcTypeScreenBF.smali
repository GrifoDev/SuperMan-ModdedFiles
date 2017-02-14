.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;
.super Ljava/lang/Thread;
.source "NfcListenStatusChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcTypeScreenBF"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mHandlerBF:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
