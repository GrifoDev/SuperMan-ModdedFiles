.class Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;
.super Landroid/os/Handler;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler setChecked , true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap2(Lcom/samsung/android/settings/DataSlotChoice;Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler setChecked , false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap2(Lcom/samsung/android/settings/DataSlotChoice;Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler setEnabl , true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get5(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->-set1(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler setEnabl , false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get5(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/DataSlotChoice;->-set1(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler SWITCH_DELAYREADY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->-set1(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " SwitchHandler updateUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
