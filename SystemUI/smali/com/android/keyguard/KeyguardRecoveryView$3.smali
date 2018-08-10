.class Lcom/android/keyguard/KeyguardRecoveryView$3;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRecoveryView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method
