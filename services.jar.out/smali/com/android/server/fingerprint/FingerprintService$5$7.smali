.class Lcom/android/server/fingerprint/FingerprintService$5$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onEnumerate(J[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerIds:[I

.field final synthetic val$groupIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;J[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$deviceId:J

    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$fingerIds:[I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$groupIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$deviceId:J

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$fingerIds:[I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$groupIds:[I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleEnumerate(J[I[I)V

    return-void
.end method
