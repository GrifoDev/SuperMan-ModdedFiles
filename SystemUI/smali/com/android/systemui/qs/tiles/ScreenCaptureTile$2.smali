.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;
.super Landroid/os/Handler;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mMainHandler MESSAGE_EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
