.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Region;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v4, v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    goto :goto_0

    :pswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method
