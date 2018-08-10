.class Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricSmallIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    return-void
.end method
