.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_0
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/android/widget/SemNumberPicker;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v5

    :cond_1
    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v10

    if-le v10, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v10, v4, Ljava/lang/Boolean;

    if-eqz v10, :cond_5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v8, v6, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    if-nez v9, :cond_7

    if-nez v7, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v7, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    return-void

    :cond_9
    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_a

    move/from16 v0, p3

    if-eq v0, v5, :cond_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x5

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/android/widget/SemNumberPicker;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/16 v10, 0xb

    move/from16 v0, p2

    if-ne v0, v10, :cond_e

    if-nez p3, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_d
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    if-nez p2, :cond_f

    const/16 v10, 0xb

    move/from16 v0, p3

    if-eq v0, v10, :cond_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get24(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/android/widget/SemNumberPicker;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v10

    sub-int v11, p3, p2

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, p3, p2

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_11
    const/4 v7, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
.end method
