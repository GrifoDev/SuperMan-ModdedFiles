.class Lcom/samsung/android/widget/SemDatePicker$2;
.super Landroid/os/Handler;
.source "SemDatePicker.java"


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
.method constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 301
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 306
    :cond_1
    return-void

    .line 309
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->-wrap2(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    .local v1, "headerText":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 311
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get2(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get9(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    if-nez v2, :cond_3

    .line 315
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10408d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "description":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get2(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10408d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "description":Ljava/lang/String;
    goto :goto_1

    .line 323
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "headerText":Landroid/text/SpannableString;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get9(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 325
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 326
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 327
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 332
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 333
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 334
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 335
    return-void

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 339
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get8(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get8(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 343
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 345
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get1(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 346
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get1(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 347
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 349
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 350
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 351
    return-void

    .line 354
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 356
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 358
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 361
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 362
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 364
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-wrap4(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 365
    return-void

    .line 368
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get8(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    if-nez v2, :cond_7

    .line 370
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get1(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 372
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 373
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 375
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 376
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-wrap4(Lcom/samsung/android/widget/SemDatePicker;)V

    goto/16 :goto_0

    .line 379
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get8(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 381
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->-get1(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 383
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 384
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 385
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 386
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 388
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 389
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->-wrap4(Lcom/samsung/android/widget/SemDatePicker;)V

    goto/16 :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
