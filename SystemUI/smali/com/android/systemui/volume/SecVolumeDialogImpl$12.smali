.class Lcom/android/systemui/volume/SecVolumeDialogImpl$12;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap22(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return v2
.end method
