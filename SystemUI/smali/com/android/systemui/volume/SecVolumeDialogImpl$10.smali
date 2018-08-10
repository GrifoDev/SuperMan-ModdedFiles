.class Lcom/android/systemui/volume/SecVolumeDialogImpl$10;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->initDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
