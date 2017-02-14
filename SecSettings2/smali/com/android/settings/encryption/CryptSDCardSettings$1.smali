.class Lcom/android/settings/encryption/CryptSDCardSettings$1;
.super Landroid/os/Handler;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get6(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap2(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap1(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$1;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get4(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
