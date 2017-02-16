.class Lcom/samsung/android/widget/SemColorPicker$3;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemColorPicker;->initGradientColorSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemColorPicker;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$3;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 150
    .local v0, "value":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$3;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$3;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->-get3(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$3;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->-get3(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker$3;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 161
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 157
    return-void
.end method
