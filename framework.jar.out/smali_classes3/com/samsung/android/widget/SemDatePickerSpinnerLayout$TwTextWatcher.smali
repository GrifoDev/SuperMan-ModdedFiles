.class public Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    const/4 v0, 0x0

    .line 938
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 939
    iput p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    .line 940
    iput p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    .line 941
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    .line 942
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 943
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    .line 944
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 945
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    .line 938
    return-void

    .line 945
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1149
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    return-void

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1153
    const-string/jumbo v3, ", mCheck : "

    .line 1152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1153
    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 1152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1154
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 1155
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1160
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1147
    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    const/4 v1, 0x1

    return v1

    .line 1130
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1118
    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1117
    if-eqz v1, :cond_1

    .line 1119
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1121
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1138
    const/4 v1, 0x0

    .line 1139
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    const/4 v1, 0x1

    .line 1139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    return v1
.end method

.method private isNumericStr(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1134
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    const-string/jumbo v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1103
    const-string/jumbo v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1104
    const-string/jumbo v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1104
    const-string/jumbo v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1105
    const-string/jumbo v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1105
    const-string/jumbo v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1106
    const-string/jumbo v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1106
    const-string/jumbo v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1107
    const-string/jumbo v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1107
    const-string/jumbo v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-nez v1, :cond_0

    .line 1108
    const-string/jumbo v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    if-eqz v1, :cond_1

    .line 1109
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1111
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setValue"    # Ljava/lang/String;
    .param p2, "selection"    # I

    .prologue
    const/4 v2, 0x0

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    if-eqz p2, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1092
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 955
    const-string/jumbo v2, ", "

    .line 954
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 955
    const-string/jumbo v2, ", "

    .line 954
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 956
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 957
    iput p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 953
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 962
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "onTextChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 964
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 965
    .local v5, "tag":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 966
    const-string/jumbo v6, "onClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "onLongClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 967
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "TAG exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 968
    return-void

    .line 971
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    if-eqz v6, :cond_c

    .line 972
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 973
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Samsung Keypad Num Month"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 974
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 975
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_5

    .line 976
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 977
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 978
    .local v3, "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 979
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 980
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_2
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 986
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 961
    .end local v3    # "month":I
    :cond_4
    :goto_1
    return-void

    .line 988
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 989
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 990
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 991
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 992
    return-void

    .line 996
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 997
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 998
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 999
    .restart local v3    # "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1000
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1001
    return-void

    .line 1003
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1009
    .end local v3    # "month":I
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1010
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1011
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1011
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1011
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1011
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1012
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1012
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1012
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1012
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "11"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1010
    if-nez v6, :cond_4

    .line 1013
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-lt v6, v7, :cond_a

    .line 1014
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMeaLanguage()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1015
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1016
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1019
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1021
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isSwaLanguage()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isFarsiLanguage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1022
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isNumericStr(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1023
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1028
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_11

    .line 1029
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 1030
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1031
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_e

    .line 1032
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1033
    .local v0, "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_10

    .line 1034
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_d

    .line 1035
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1039
    :goto_2
    return-void

    .line 1037
    :cond_d
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_2

    .line 1042
    .end local v0    # "day":I
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    if-lt v6, v7, :cond_f

    .line 1043
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_10

    .line 1044
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1045
    return-void

    .line 1048
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 1053
    :cond_11
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1054
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1055
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_17

    .line 1056
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1057
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1056
    if-nez v6, :cond_14

    .line 1058
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1056
    if-eqz v6, :cond_15

    .line 1060
    :cond_14
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1061
    return-void

    .line 1064
    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1065
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1066
    .restart local v0    # "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_16

    .line 1067
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1068
    return-void

    .line 1070
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1073
    .end local v0    # "day":I
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1074
    .local v2, "len":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    add-int/lit8 v8, v2, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v6, v8, v6

    double-to-int v1, v6

    .line 1075
    .local v1, "devider":I
    const-string/jumbo v4, ""

    .line 1077
    .local v4, "setValue":Ljava/lang/String;
    const/4 v6, 0x1

    if-eq v2, v6, :cond_18

    .line 1078
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1081
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    div-int/2addr v7, v1

    if-lt v6, v7, :cond_19

    .line 1082
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    div-int/2addr v7, v1

    if-le v6, v7, :cond_4

    .line 1083
    :cond_19
    add-int/lit8 v6, v2, -0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1084
    return-void
.end method
