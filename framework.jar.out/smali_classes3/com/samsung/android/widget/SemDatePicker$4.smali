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

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->-get19(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->-set1(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$4;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->-wrap4(Lcom/samsung/android/widget/SemDatePicker;)V

    :cond_2
    return v2
.end method
