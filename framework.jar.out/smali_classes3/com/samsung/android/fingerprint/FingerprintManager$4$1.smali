.class Lcom/samsung/android/fingerprint/FingerprintManager$4$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$4;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$4;Lcom/samsung/android/fingerprint/FingerprintEvent;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$id:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get3()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$id:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$index:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap1(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get3()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get3()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0x33 -> :sswitch_1
    .end sparse-switch
.end method
