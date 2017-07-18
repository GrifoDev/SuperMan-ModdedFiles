.class public Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;
.super Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;
.source "InCallContactInteractions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContactInteractions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonContextInfo"
.end annotation


# instance fields
.field detail:Ljava/lang/String;

.field isIncoming:Z

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x15

    const/16 v5, 0x14

    const v4, 0x7f1000cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f100080

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->message:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->detail:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_2

    const v4, 0x7f02014c

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->detail:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v4, 0x7f02017d

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method
