.class Lcom/samsung/android/fingerprint/FingerprintManager$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

.field final synthetic val$listener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->val$listener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->val$listener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    return-void
.end method
