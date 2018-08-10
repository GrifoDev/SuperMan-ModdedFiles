.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11

    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    :cond_0
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    move/from16 v0, p6

    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v2

    :cond_2
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7, v2}, Landroid/widget/NumberPicker;->-wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v7

    if-gt v4, v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v8}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_4

    :cond_3
    const-string/jumbo v7, ""

    return-object v7

    :cond_4
    return-object v1

    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, ""

    return-object v7

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    move/from16 v0, p6

    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v5, v8, v7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/widget/NumberPicker;->-wrap8(Landroid/widget/NumberPicker;II)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v0, p5

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    return-object v7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    const-string/jumbo v7, ""

    return-object v7
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Landroid/widget/NumberPicker;->-get0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
