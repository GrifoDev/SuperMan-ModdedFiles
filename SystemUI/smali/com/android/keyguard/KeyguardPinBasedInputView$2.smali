.class Lcom/android/keyguard/KeyguardPinBasedInputView$2;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->-wrap0(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
