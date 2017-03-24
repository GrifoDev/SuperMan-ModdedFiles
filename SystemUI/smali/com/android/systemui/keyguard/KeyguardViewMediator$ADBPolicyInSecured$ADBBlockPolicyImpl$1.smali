.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl$1;->this$2:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;Z)Z

    goto :goto_0
.end method
