.class Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap6(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
