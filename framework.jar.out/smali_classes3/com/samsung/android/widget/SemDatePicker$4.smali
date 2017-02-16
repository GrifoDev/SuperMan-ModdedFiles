.class Lcom/samsung/android/widget/SemDatePicker$4;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->-get19(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->-set2(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    .line 412
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->-wrap4(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 415
    :cond_2
    return v2
.end method
