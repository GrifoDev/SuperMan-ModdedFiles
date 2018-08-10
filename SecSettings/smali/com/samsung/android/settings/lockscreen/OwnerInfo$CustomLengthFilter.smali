.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "OwnerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLengthFilter"
.end annotation


# instance fields
.field private mMaxLength:I

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v0, 0x41

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->mMaxLength:I

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->mMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;

    move-result-object v2

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p3, p2

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
