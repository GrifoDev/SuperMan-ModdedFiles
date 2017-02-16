.class public Lcom/android/incallui/util/VisualCallCenter$IvrTask;
.super Landroid/os/AsyncTask;
.source "VisualCallCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/VisualCallCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IvrTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yulore/sdk/ivr/model/INode;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x0

    .line 345
    .local v1, "menus":Lcom/yulore/sdk/ivr/model/LayerMenu;
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x64

    if-ne v3, v4, :cond_1

    .line 346
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    .line 378
    :cond_0
    :goto_0
    return-object v2

    .line 348
    :cond_1
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    if-eqz v3, :cond_0

    .line 351
    sput-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    .line 353
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 354
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v3, v2}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v1

    .line 369
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 371
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_3
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->getShortcuts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 374
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/LayerMenu;->getShortcuts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    :cond_4
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    goto :goto_0

    .line 356
    :cond_5
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 359
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getCount()I

    move-result v3

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 360
    sget-object v3, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v3, v2}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v1

    goto :goto_1

    .line 362
    :cond_6
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    .line 363
    .local v0, "iNode":Lcom/yulore/sdk/ivr/model/INode;
    sget-object v2, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/YuloreIvrApi;

    invoke-interface {v2, v0}, Lcom/yulore/sdk/ivr/YuloreIvrApi;->getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_2

    .line 365
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 333
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
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
    .line 383
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/INode;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 384
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->setList(Ljava/util/List;)V

    .line 386
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 339
    return-void
.end method
