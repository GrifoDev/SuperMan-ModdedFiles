.class final Lcom/android/server/policy/TspStateManager$H;
.super Landroid/os/Handler;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final CHANGE_WINDOW_POLICY:I = 0x1

.field public static final FOCUSED_INPUT_METHOD:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/policy/TspStateManager;->-wrap1(Lcom/android/server/policy/TspStateManager;Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v1, v0}, Lcom/android/server/policy/TspStateManager;->-wrap0(Lcom/android/server/policy/TspStateManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
