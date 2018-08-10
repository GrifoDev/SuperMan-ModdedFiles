.class public Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
.super Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.source "GroupItemCollection.java"


# instance fields
.field private mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->setMagicString(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAttrToGroupItem(III[B)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->pushAttribute(II[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGroupItem(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    return-object v0
.end method

.method public getGroupItemByIndex(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItemsNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMagicString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->getMagicString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMagicString(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->setMagicString(Ljava/lang/String;)V

    return-void
.end method
