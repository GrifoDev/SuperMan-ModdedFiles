.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
