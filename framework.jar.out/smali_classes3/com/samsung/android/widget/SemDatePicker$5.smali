.class Lcom/samsung/android/widget/SemDatePicker$5;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$5;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$5;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$5;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->-get8(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentViewType(I)V

    return-void
.end method
