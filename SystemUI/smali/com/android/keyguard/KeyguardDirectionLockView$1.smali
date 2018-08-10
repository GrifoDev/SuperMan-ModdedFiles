.class Lcom/android/keyguard/KeyguardDirectionLockView$1;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap8(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    return-void
.end method
