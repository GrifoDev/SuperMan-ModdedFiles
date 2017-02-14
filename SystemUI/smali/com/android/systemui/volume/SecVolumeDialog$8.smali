.class Lcom/android/systemui/volume/SecVolumeDialog$8;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 4

    const/16 v3, 0xa

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get25(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v2

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, p3}, Lcom/android/systemui/volume/SecVolumeDialog;->-set7(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set15(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get24(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v2

    if-eq v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public onVolumeKeyDown()V
    .locals 0

    return-void
.end method

.method public onVolumeKeyUp()V
    .locals 0

    return-void
.end method
