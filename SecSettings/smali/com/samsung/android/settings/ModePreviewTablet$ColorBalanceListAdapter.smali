.class public Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ModePreviewTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorBalanceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez p2, :cond_2

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;-><init>()V

    const v2, 0x7f0a08d1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0a084b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f12088b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f1200fa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/ModePreviewTablet;->-wrap0(Lcom/samsung/android/settings/ModePreviewTablet;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;

    goto :goto_0
.end method
