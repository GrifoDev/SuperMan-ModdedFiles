.class Lcom/android/settings/wifi/WifiConfigController$3;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$3;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b9 -> :sswitch_0
        0x7f0a043b -> :sswitch_0
        0x7f0a061c -> :sswitch_1
        0x7f0a06a0 -> :sswitch_0
        0x7f0a06a7 -> :sswitch_0
        0x7f0a0788 -> :sswitch_0
        0x7f0a07c9 -> :sswitch_0
        0x7f0a0986 -> :sswitch_0
        0x7f0a0988 -> :sswitch_0
        0x7f0a09bb -> :sswitch_0
        0x7f0a09c8 -> :sswitch_0
    .end sparse-switch
.end method
