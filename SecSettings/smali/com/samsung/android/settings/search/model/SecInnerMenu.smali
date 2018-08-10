.class public Lcom/samsung/android/settings/search/model/SecInnerMenu;
.super Lcom/samsung/android/settings/search/model/SecMenu;
.source "SecInnerMenu.java"


# instance fields
.field private args:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    iput-object p3, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->args:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/settings/search/model/SecInnerMenu;->initInnerSubMenu(Landroid/content/Context;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method
