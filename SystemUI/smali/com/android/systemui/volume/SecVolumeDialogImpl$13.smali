.class Lcom/android/systemui/volume/SecVolumeDialogImpl$13;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

.field final synthetic val$isSmartView:Z

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$stream:I

    iput-boolean p4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$isSmartView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get10(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x7

    invoke-static {v6, v8, v7}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get52(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get22(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    invoke-interface {v6, v10, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set19(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;J)J

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    invoke-interface {v6, v5, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v6, v9, :cond_7

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    invoke-interface {v6, v10, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v6, :cond_6

    const/4 v4, 0x1

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$stream:I

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    :cond_5
    invoke-interface {v6, v7, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    invoke-interface {v6, v9, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$stream:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$isSmartView:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap0(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v5

    const-string/jumbo v6, "muvo"

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STREAM_SMART_VIEW onClick.mute:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v5

    const-string/jumbo v6, "mkev"

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v5, v6, :cond_b

    const/4 v3, 0x1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$stream:I

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v5

    :goto_4
    invoke-interface {v6, v7, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$13;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    goto :goto_4
.end method
