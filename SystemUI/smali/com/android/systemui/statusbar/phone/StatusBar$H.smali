.class public Lcom/android/systemui/statusbar/phone/StatusBar$H;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleKeyboardShortcuts(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyboardShortcuts()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap21(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap16(Lcom/android/systemui/statusbar/phone/StatusBar;II)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_5
        0x402 -> :sswitch_0
        0x403 -> :sswitch_1
        0x1000000 -> :sswitch_6
        0x1000001 -> :sswitch_7
        0x1000002 -> :sswitch_8
        0x1000010 -> :sswitch_9
        0x1000011 -> :sswitch_a
    .end sparse-switch
.end method
