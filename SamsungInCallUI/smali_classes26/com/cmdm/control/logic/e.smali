.class public Lcom/cmdm/control/logic/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cd:Lcom/cmdm/control/dao/d;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    .line 35
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    .line 36
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/e;->bY:I

    .line 39
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/cmdm/control/dao/d;->aN()Lcom/cmdm/control/dao/d;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    .line 45
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 47
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/e;->bY:I

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p2, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/NewContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AddContactResult;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/NewContact;>;"
    const/4 v2, 0x0

    .line 159
    const/4 v11, 0x0

    .line 161
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AddContactResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v10, Lcom/cmdm/control/bean/NewContactInfo;

    invoke-direct {v10}, Lcom/cmdm/control/bean/NewContactInfo;-><init>()V

    .line 163
    .local v10, "nci":Lcom/cmdm/control/bean/NewContactInfo;
    invoke-virtual {v10, p1}, Lcom/cmdm/control/bean/NewContactInfo;->setNewContactList(Ljava/util/ArrayList;)V

    .line 164
    invoke-static {v10}, Lcom/cmdm/control/util/ObjectToXml;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "xml_content":Ljava/lang/String;
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    .line 168
    iget-object v8, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    move-object v4, p2

    .line 166
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 179
    .end local v5    # "xml_content":Ljava/lang/String;
    .end local v10    # "nci":Lcom/cmdm/control/bean/NewContactInfo;
    :goto_0
    return-object v11

    .line 170
    .restart local v5    # "xml_content":Ljava/lang/String;
    .restart local v10    # "nci":Lcom/cmdm/control/bean/NewContactInfo;
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 171
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AddContactResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 170
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AddContactResult;>;"
    goto :goto_0

    .line 175
    .end local v5    # "xml_content":Ljava/lang/String;
    .end local v10    # "nci":Lcom/cmdm/control/bean/NewContactInfo;
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AddContactResult;>;"
    const/16 v0, 0x9

    .line 176
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 175
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AddContactResult;>;"
    goto :goto_0
.end method

.method public aa()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AuthedContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v8, 0x0

    .line 62
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AuthedContact;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    .line 66
    iget v4, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 77
    :goto_0
    return-object v8

    .line 68
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 69
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AuthedContact;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 68
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AuthedContact;>;"
    goto :goto_0

    .line 73
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AuthedContact;>;"
    const/16 v0, 0x9

    .line 74
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 73
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/AuthedContact;>;"
    goto :goto_0
.end method

.method public p(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CxContact;>;"
    const/4 v11, 0x0

    .line 82
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    invoke-static {p1}, Lcom/cmdm/control/bean/CxContacts;->getCxContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "addXml":Ljava/lang/String;
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v3, ""

    .line 88
    const-string v4, "1"

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    .line 89
    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    .line 87
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 103
    :goto_0
    return-object v11

    .line 91
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 92
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 91
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 95
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 96
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 95
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 99
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 100
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 99
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public q(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CxContact;>;"
    const/4 v11, 0x0

    .line 108
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    invoke-static {p1}, Lcom/cmdm/control/bean/CxContacts;->getCxContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "addXml":Ljava/lang/String;
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v3, ""

    .line 114
    const-string v4, "2"

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    .line 115
    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    .line 113
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 129
    :goto_0
    return-object v11

    .line 117
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 118
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 117
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 121
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 122
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 121
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 125
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 126
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 125
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public r(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v11, 0x0

    .line 135
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    .line 139
    const-string v4, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    .line 140
    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    move-object v3, p1

    .line 138
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 154
    :goto_0
    return-object v11

    .line 142
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 143
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 142
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 146
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 147
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 146
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 150
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 151
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 150
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method
