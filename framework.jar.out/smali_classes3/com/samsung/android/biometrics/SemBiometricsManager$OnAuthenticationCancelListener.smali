.class Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-wrap0(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V

    return-void
.end method
