.class Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungPolicyHandler"
.end annotation


# static fields
.field private static final MSG_ENDCALL_DELAYED_PRESS:I = 0x3

.field private static final MSG_RECONFIGURE_DEFAULT_DISPLAY:I = 0x2

.field private static final MSG_REQUEST_TRAVERSAL_BY_PWM:I = 0x3c

.field private static final MSG_SET_IN_TOUCH_MODE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reconfigureDefaultDisplay()V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v6, v7, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap4(Lcom/android/server/policy/SamsungPhoneWindowManager;JZI)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap5(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "MSG_REQUEST_TRAVERSAL_BY_PWM"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3c -> :sswitch_3
    .end sparse-switch
.end method
