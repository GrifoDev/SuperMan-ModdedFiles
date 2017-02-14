.class Lcom/android/server/fingerprint/FingerprintService$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->val$id:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap6(Lcom/android/server/fingerprint/FingerprintService;I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->val$id:I

    goto :goto_0
.end method
