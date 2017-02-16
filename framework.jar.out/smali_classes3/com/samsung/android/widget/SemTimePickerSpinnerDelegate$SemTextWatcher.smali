.class public Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 913
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    .line 914
    iput p2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    .line 915
    iput p3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    .line 917
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    .line 913
    :goto_1
    return-void

    .line 918
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 920
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    :goto_2
    iput v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 984
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    return-void

    .line 988
    :cond_0
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 991
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 994
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 995
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    .line 996
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 997
    :cond_3
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    if-nez v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    .line 999
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 929
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    .line 931
    iput p4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    .line 928
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 935
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 939
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 940
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 942
    return-void

    .line 945
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    if-nez v1, :cond_7

    .line 946
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_4

    .line 947
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_5

    .line 948
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    .line 934
    :cond_4
    :goto_0
    return-void

    .line 951
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 952
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_4

    .line 953
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 954
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto :goto_0

    .line 959
    :cond_7
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    if-ne v1, v4, :cond_a

    .line 960
    iget v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_4

    .line 961
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_8

    .line 962
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 963
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto :goto_0

    .line 965
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 966
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 967
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 974
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_4

    .line 975
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 976
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
