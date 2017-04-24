.class public Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LowerMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040058

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;-><init>()V

    const v3, 0x7f100129

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    const v3, 0x7f10012b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_number:Landroid/widget/TextView;

    const v3, 0x7f10012a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulore/sdk/ivr/model/INode;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/INode;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/INode;->getPromptText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/INode;->getPromptText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
