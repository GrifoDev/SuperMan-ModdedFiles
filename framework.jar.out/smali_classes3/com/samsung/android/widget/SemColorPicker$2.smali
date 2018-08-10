.class Lcom/samsung/android/widget/SemColorPicker$2;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelColorChanged(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemColorPicker;->-set0(Lcom/samsung/android/widget/SemColorPicker;Z)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->-get3(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setHS(FF)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$2;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->-wrap1(Lcom/samsung/android/widget/SemColorPicker;)V

    return-void
.end method
