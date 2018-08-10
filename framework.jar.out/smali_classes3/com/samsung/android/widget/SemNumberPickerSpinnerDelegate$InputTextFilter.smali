.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v5

    if-gt v3, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_5

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v6, v6, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_4
    const-string/jumbo v5, ""

    return-object v5

    :cond_5
    return-object v0

    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_9

    aget-object v4, v6, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    return-object v0

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    return-object v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v6, v6, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_b
    const-string/jumbo v5, ""

    return-object v5
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
