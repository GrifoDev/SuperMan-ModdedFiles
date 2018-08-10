.class Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DefaultBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockerImpl"
.end annotation


# instance fields
.field reasonCode:I

.field final synthetic this$0:Lcom/android/server/desktopmode/DefaultBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v0, 0x10402a7

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/DefaultBlocker;->-get0(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const v0, 0x10402a4

    goto :goto_0

    :pswitch_2
    const v0, 0x10402a2

    goto :goto_0

    :pswitch_3
    const v0, 0x10402a7

    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/DefaultBlocker;->-get0(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
