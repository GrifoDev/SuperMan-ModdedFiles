.class Lcom/android/keyguard/KeyguardRecoveryView$1;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRecoveryView;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1

    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_1
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method
