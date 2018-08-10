.class Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;
.super Ljava/lang/Object;
.source "KeyguardBiometricIconView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconDrawable(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateVisualCueIcon()V

    :cond_1
    return-void
.end method
