.class Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
.super Landroid/os/Handler;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field static final MSG_ON_STRONG_AUTH_REQUIRED_CHANGED:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 2327
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2326
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2332
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2331
    :goto_0
    return-void

    .line 2334
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    goto :goto_0

    .line 2332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
