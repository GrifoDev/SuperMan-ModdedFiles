.class Lcom/android/server/fingerprint/FingerprintService$5$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onAcquired(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$errorCase:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->val$errorCase:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->val$errorCase:I

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_0

    const/16 v0, 0x8

    :goto_0
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->val$errorCase:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->val$errorCase:I

    goto :goto_0
.end method
