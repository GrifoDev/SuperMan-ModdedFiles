.class Lcom/samsung/android/biometrics/SemBiometricsManager$2;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field final synthetic val$callback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$2;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$2;->val$callback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$2;->val$callback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
