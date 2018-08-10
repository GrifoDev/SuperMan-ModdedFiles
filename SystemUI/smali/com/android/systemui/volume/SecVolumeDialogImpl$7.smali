.class Lcom/android/systemui/volume/SecVolumeDialogImpl$7;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set29(Z)Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get38(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap17(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set29(Z)Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get41(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set30(I)I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get58()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_3
    return-void
.end method
