.class Lcom/android/keyguard/KeyguardSimPukTMOView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukTMOView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-wrap0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/telecom/TelecomManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-wrap1(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/telecom/TelecomManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-wrap2(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/telecom/TelecomManager;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-get1(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
