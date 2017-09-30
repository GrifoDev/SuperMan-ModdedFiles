.class public Lcom/android/incallui/util/VisualCallCenter$IvrTask;
.super Landroid/os/AsyncTask;


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

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VisualCallCenter$IvrTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
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

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    if-eqz v1, :cond_0

    sput-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/c;->a(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/LayerMenu;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/model/LayerMenu;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->mNodeList:Ljava/util/List;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getCount()I

    move-result v1

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_6

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/c;->a(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->getList()Ljava/util/List;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/INode;

    sget-object v1, Lcom/android/incallui/util/VisualCallCenter;->api:Lcom/yulore/sdk/ivr/c;

    invoke-interface {v1, v0}, Lcom/yulore/sdk/ivr/c;->a(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/util/VisualCallCenter;->isMenuPressed:Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

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

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->setList(Ljava/util/List;)V

    sget-object v0, Lcom/android/incallui/util/VisualCallCenter;->LMA:Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/visualcallcenter/LowerMenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
