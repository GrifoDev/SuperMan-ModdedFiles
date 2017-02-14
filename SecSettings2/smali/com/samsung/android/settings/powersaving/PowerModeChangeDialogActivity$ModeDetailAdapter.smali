.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0401c5

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v6, 0x7f1100e5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f1101d3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f1101f7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v4

    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
