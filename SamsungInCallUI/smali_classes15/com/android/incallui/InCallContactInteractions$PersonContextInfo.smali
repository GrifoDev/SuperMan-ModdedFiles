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

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 7
    .param p1, "listItem"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x14

    .line 348
    const v4, 0x7f1000cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    .local v3, "messageTextView":Landroid/widget/TextView;
    const v4, 0x7f100080

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .local v1, "detailTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->message:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->detail:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_2

    const v4, 0x7f020142

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 357
    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 359
    .local v2, "messageLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .local v0, "detailLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->isIncoming:Z

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v4, p0, Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;->detail:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    .end local v0    # "detailLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "messageLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const v4, 0x7f020173

    goto :goto_1

    .restart local v2    # "messageLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    move v4, v6

    .line 359
    goto :goto_2

    .restart local v0    # "detailLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    move v5, v6

    .line 364
    goto :goto_3
.end method
