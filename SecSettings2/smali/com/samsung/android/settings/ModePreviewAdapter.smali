.class public Lcom/samsung/android/settings/ModePreviewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field ModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsAutomatic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p4, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x1020014

    const/4 v4, 0x0

    const-string/jumbo v1, "ModePreviewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getView / position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0402f0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "ModePreviewAdapter"

    const-string/jumbo v2, "tw_select_dialog_singlechoice_holo"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04015f

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "ModePreviewAdapter"

    const-string/jumbo v2, "list_item_with_radiobox"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
