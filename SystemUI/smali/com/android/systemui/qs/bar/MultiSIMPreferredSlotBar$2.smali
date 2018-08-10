.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;
.super Landroid/os/Handler;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "UIHandler MESSAGE_EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
