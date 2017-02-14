.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1$1;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1$1;->this$2:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1$1;->this$2:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    return-void
.end method
