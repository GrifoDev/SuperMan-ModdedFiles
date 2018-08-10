.class Lcom/android/systemui/volume/VolumeDialogImpl$6;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragging:Z

.field private final mSliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    :cond_2
    return v3

    :cond_3
    return v2
.end method
