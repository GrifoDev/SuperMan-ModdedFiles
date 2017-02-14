.class Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;
.super Landroid/os/Handler;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

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
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
