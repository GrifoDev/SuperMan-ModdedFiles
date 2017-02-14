.class Lcom/android/server/fingerprint/FingerprintService$5$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onAcquired(JI)V
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
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$3;->val$errorCase:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    return-void
.end method
