.class Lcom/android/keyguard/KeyguardFMMView$1;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFMMView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardFMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$1;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardFMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method
