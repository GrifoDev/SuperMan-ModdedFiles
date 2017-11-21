.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-set0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0c4b

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method
