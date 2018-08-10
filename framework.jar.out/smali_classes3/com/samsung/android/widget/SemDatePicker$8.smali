.class Lcom/samsung/android/widget/SemDatePicker$8;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$8;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$8;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap6(Lcom/samsung/android/widget/SemDatePicker;Z)V

    return-void
.end method
