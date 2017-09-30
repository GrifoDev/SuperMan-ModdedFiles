.class public Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
.super Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContactInteractions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessContextInfo"
.end annotation


# instance fields
.field detail:Ljava/lang/String;

.field heading:Ljava/lang/String;

.field iconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v0, 0x7f100049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f1000a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method
