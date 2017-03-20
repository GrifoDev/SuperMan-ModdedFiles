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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->context:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
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

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x4

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "holder":Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 86
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040058

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;-><init>()V

    .line 88
    .restart local v0    # "holder":Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    const v3, 0x7f100129

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f10012b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_number:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f10012a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulore/sdk/ivr/model/INode;

    .line 98
    .local v2, "lowerMenu":Lcom/yulore/sdk/ivr/model/INode;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 99
    instance-of v3, v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_3

    .line 100
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

    .line 101
    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    .line 102
    .local v1, "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/ItemNodeType;->NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v3, v4, :cond_2

    .line 103
    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .end local v1    # "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    .end local v2    # "lowerMenu":Lcom/yulore/sdk/ivr/model/INode;
    :cond_0
    :goto_1
    return-object p2

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    check-cast v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;
    goto :goto_0

    .line 105
    .restart local v1    # "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    .restart local v2    # "lowerMenu":Lcom/yulore/sdk/ivr/model/INode;
    :cond_2
    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 108
    .end local v1    # "itemNode":Lcom/yulore/sdk/ivr/model/ItemNode;
    :cond_3
    iget-object v3, v0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/INode;->getPromptText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
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

    .prologue
    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/INode;>;"
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    return-void
.end method
