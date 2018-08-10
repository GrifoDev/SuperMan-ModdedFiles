.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BoostModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f0d01e4

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v10, 0x7f0a08d1

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f0a084b

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x7f0a0825

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const v10, 0x7f0a088e

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    if-eqz v1, :cond_2

    iget-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    :cond_0
    iget-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mType:I

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_1
    return-object v6

    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mEntries:[Ljava/lang/String;

    const v11, 0x7f0d01e5

    invoke-direct {v0, v8, v11, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v8, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mStatus:I

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$1;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;)V

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    :pswitch_1
    iget v10, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mStatus:I

    if-ne v10, v8, :cond_4

    :goto_2
    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v4, v9}, Landroid/widget/Switch;->setVisibility(I)V

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;)V

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_4
    move v8, v9

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
