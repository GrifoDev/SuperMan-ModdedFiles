.class final Lcom/android/launcher2/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    iput-object p2, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v4, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget v5, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    sub-int v7, p6, p5

    sub-int/2addr v6, v7

    sub-int v3, v5, v6

    if-gtz v3, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-static {v4, v5}, Lcom/android/launcher2/Utilities;->showToast(Landroid/content/Context;I)V

    const-string v4, ""

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    sub-int v5, p3, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-static {v4, v5}, Lcom/android/launcher2/Utilities;->showToast(Landroid/content/Context;I)V

    const-string v4, ""

    goto :goto_0

    :cond_3
    sub-int v5, p3, p2

    if-ge v3, v5, :cond_0

    sub-int v5, p3, p2

    if-ge v3, v5, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-static {v4, v5}, Lcom/android/launcher2/Utilities;->showToast(Landroid/content/Context;I)V

    add-int v1, p2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->isEmoji(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->isEnclosedAlphanumSuppplement(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, ""

    goto :goto_0
.end method
