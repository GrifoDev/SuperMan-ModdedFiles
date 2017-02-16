.class Lcom/fmd/statusbarcolor/color$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "color.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fmd/statusbarcolor/color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fmd/statusbarcolor/color;


# direct methods
.method constructor <init>(Lcom/fmd/statusbarcolor/color;)V
    .locals 0

    iput-object p1, p0, Lcom/fmd/statusbarcolor/color$Receiver;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color$Receiver;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v1, "FMD.StatusbarExpandedOpened"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    goto :goto_0

    :cond_0
    const-string v1, "FMD.StatusbarExpandedClosed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x1

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mIsScreenOff:I

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x0

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mIsScreenOff:I

    iget-object v0, v3, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, v3, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v1, "FMD.ActivityFlags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Flags"

    const v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x400

    and-int v0, v0, v1

    shr-int/lit8 v0, v0, 0xa

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mIsFullScreen:I

    goto :goto_0

    :cond_4
    const-string v1, "FMD.Recents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "visible"

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput v0, v3, Lcom/fmd/statusbarcolor/color;->mRecentsActivityVisible:I

    if-nez v0, :cond_5

    iget v0, v3, Lcom/fmd/statusbarcolor/color;->mIsScreenOff:I

    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, v3, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget-object v0, v3, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    iget-object v1, v3, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method
