.class final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$bundle:Landroid/os/Bundle;

.field private synthetic val$this:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0;->val$this:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0;->val$bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0;->val$this:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$-void_handleKeyguardStateUpdated_android_os_Bundle_bundle_LambdaImpl0;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-com_android_keyguard_KeyguardUpdateMonitor_lambda$1(Landroid/os/Bundle;)V

    return-void
.end method
