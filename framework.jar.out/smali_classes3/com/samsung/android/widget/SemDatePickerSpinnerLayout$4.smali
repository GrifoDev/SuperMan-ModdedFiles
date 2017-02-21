.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 11

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v2

    :cond_0
    if-ne p2, v2, :cond_5

    const/4 v5, 0x1

    if-ne p3, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le v5, v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v3, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    return-void

    :cond_5
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    if-ne p3, v2, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_a

    const/16 v5, 0xb

    if-ne p2, v5, :cond_8

    if-nez p3, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez p2, :cond_9

    const/16 v5, 0xb

    if-ne p3, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
