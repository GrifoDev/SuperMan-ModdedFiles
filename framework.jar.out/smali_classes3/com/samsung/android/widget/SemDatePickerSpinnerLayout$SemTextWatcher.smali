.class public Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;
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
    name = "SemTextWatcher"
.end annotation


# instance fields
.field private final INVALID_POSITION_ID:I

.field private final LAST_POSITION_ID:I

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
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->INVALID_POSITION_ID:I

    iput v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->LAST_POSITION_ID:I

    iput v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changedLen:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isMonth:Z

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mCheck:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mCheck:I

    if-gez v1, :cond_0

    iput v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mCheck:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v2, :cond_1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mNext:I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get17(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get19(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isNumericStr(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get22(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get23(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get22(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

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

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

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

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "onTextChanged: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string/jumbo v15, "onClick"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "onLongClick"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "TAG exists: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/widget/EditText;->isFocused()Z

    move-result v15

    if-nez v15, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isMonth:Z

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changedLen:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "Samsung Keypad Num Month"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    if-ne v5, v15, :cond_6

    if-ge v7, v8, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-lez v5, :cond_5

    const/16 v15, 0xa

    if-lt v8, v15, :cond_7

    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_7
    const-string/jumbo v15, "1"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    if-ge v7, v8, :cond_8

    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    if-lt v5, v15, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isMeaLanguage()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto :goto_1

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto :goto_1

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isSwaLanguage()Z

    move-result v15

    if-nez v15, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isFarsiLanguage()Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_c
    if-lez v5, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changedLen:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v5, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    if-ne v5, v15, :cond_10

    if-ge v2, v3, :cond_f

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_e
    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_2

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto/16 :goto_1

    :cond_10
    const/16 v15, 0xa

    if-lt v3, v15, :cond_11

    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    :cond_11
    const/16 v15, 0x14

    if-lt v3, v15, :cond_12

    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string/jumbo v15, "1"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    :cond_12
    const/16 v15, 0x1e

    if-lt v3, v15, :cond_14

    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string/jumbo v15, "1"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string/jumbo v15, "2"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    :cond_13
    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_14
    const-string/jumbo v15, "0"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v15, "1"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    const-string/jumbo v15, "2"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    const-string/jumbo v15, "3"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    if-ge v2, v3, :cond_15

    const-string/jumbo v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get24(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get24(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v13

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v5, :cond_1c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->mMaxLen:I

    if-ne v5, v15, :cond_1c

    if-lt v12, v14, :cond_17

    if-le v12, v13, :cond_18

    :cond_17
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v15

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v12, v7, v0}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v17

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    :cond_19
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v7

    goto/16 :goto_3

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->changeFocus()V

    goto/16 :goto_1

    :cond_1c
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    add-int/lit8 v15, v5, -0x1

    int-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v18, v16

    move-wide/from16 v0, v16

    double-to-int v4, v0

    const-string/jumbo v9, ""

    const/4 v15, 0x1

    if-eq v5, v15, :cond_1d

    add-int/lit8 v15, v5, -0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_1d
    div-int v15, v14, v4

    if-lt v12, v15, :cond_1e

    div-int v15, v13, v4

    if-le v12, v15, :cond_5

    :cond_1e
    add-int/lit8 v15, v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
