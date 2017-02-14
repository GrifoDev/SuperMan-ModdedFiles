.class Lcom/android/server/fingerprint/FingerprintService$11;
.super Lcom/android/server/fingerprint/EnrollClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/EnrollClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap7(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    return-object v0
.end method

.method public insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public notifyUserActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap19(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap14(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;II)V

    return-void
.end method
