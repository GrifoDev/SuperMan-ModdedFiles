.class Lcom/android/keyguard/KeyguardMessageArea$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->-get1(Lcom/android/keyguard/KeyguardMessageArea;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->-set0(Lcom/android/keyguard/KeyguardMessageArea;Z)Z

    :cond_0
    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->-get2(Lcom/android/keyguard/KeyguardMessageArea;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->-wrap0(Lcom/android/keyguard/KeyguardMessageArea;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->-set1(Lcom/android/keyguard/KeyguardMessageArea;I)I

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    return-void
.end method
