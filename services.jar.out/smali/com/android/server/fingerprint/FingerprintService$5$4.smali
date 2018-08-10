.class Lcom/android/server/fingerprint/FingerprintService$5$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onAuthenticated(JIILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$token:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;JIILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$groupId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$token:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$deviceId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$fingerId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$token:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->handleAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method
