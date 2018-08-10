.class Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnrollBroadcastManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;
    }
.end annotation


# instance fields
.field private mBrForEnroll:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;)Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->setReceiver(Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mBrForEnroll:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-void
.end method

.method private setReceiver(Z)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FPMS_FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EnrollBroadcastManager : setReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mBrForEnroll:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->mBrForEnroll:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "EnrollBroadcastManager : failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
