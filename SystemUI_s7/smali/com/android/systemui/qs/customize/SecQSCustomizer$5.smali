.class Lcom/android/systemui/qs/customize/SecQSCustomizer$5;
.super Landroid/os/Handler;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    iget-object v0, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v3

    const/16 v4, 0x1388

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get1(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get2(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    goto :goto_0

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-static {v4, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap5(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
