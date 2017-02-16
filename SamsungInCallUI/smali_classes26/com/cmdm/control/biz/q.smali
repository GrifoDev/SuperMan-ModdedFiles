.class public Lcom/cmdm/control/biz/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "statu"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 153
    .local v4, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 154
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "select":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    const-string v5, "1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and (statu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or statu=2)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and ( contactname like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 166
    const-string v6, "%\" or contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 168
    const-string v6, "%\" or namepinyin like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    :cond_1
    const-string v2, " namepinyin COLLATE LOCALIZED asc"

    .line 171
    .local v2, "orderBy":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    return-object v0

    .line 160
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    .end local v2    # "orderBy":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and statu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "statu"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Lcom/cmdm/control/database/Impl/CxContactStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/Impl/CxContactStrategy;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, "cxstrategy":Lcom/cmdm/control/database/Impl/CxContactStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 219
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CxContact;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "select":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and statu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and ( contactname like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 225
    const-string v6, "%\" or contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 227
    const-string v6, "%\" or namepinyin like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    :cond_1
    const-string v3, " namepinyin COLLATE LOCALIZED asc"

    .line 230
    .local v3, "orderBy":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CxContact;>;"
    return-object v0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 202
    .local v4, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 203
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "select":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 207
    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    :cond_0
    const-string v2, " namepinyin COLLATE LOCALIZED asc"

    .line 210
    .local v2, "orderBy":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    return-object v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "statu"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v5, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 381
    .local v5, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 382
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const-string v3, "type=? and statu!=?"

    .line 383
    .local v3, "select":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    .line 384
    .local v4, "selectArgs":[Ljava/lang/String;
    const-string v2, "contactname asc"

    .line 385
    .local v2, "orderBy":Ljava/lang/String;
    invoke-virtual {v1, v3, v4, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 387
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    return-object v0
.end method

.method public a(Lcom/cmdm/control/bean/GetCornetBindingResult;)V
    .locals 9
    .param p1, "mGetCornetBindingResult"    # Lcom/cmdm/control/bean/GetCornetBindingResult;

    .prologue
    .line 478
    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 479
    .local v4, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 480
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    .line 482
    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 485
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 495
    :try_start_0
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 501
    :goto_1
    return-void

    .line 486
    :cond_0
    :try_start_1
    const-string v8, "shortnum"

    .line 487
    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    .line 488
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cmdm/control/bean/CornetBinding;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBinding;->shortMobile:Ljava/lang/String;

    .line 486
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 490
    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    .line 491
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cmdm/control/bean/CornetBinding;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBinding;->longMobile:Ljava/lang/String;

    .line 490
    invoke-static {v7}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    .line 492
    .local v5, "whereArgs":[Ljava/lang/String;
    const-string v6, " contactnum=?"

    .line 493
    .local v6, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v0, v6, v5}, Lcom/cmdm/control/database/DBContext;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v5    # "whereArgs":[Ljava/lang/String;
    .end local v6    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 499
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v7

    .line 499
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 500
    throw v7
.end method

.method public a(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "iterm1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;>;"
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 427
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 428
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    .line 431
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 437
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 444
    :goto_1
    return-void

    .line 433
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 434
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ContactInfo;

    .line 435
    .local v3, "val":Lcom/cmdm/control/bean/ContactInfo;
    invoke-virtual {p0, v3}, Lcom/cmdm/control/biz/q;->d(Lcom/cmdm/control/bean/ContactInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    .end local v3    # "val":Lcom/cmdm/control/bean/ContactInfo;
    :catch_0
    move-exception v4

    .line 441
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    .line 440
    :catchall_0
    move-exception v4

    .line 441
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 442
    throw v4
.end method

.method public a(Lcom/cmdm/control/bean/ContactInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 237
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 238
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    iput-object p2, p1, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    .line 239
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 240
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public a(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 6
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "iterm1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;>;"
    new-instance v3, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 449
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 450
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 451
    .local v2, "result":Ljava/lang/Boolean;
    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    .line 454
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 462
    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 468
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 456
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 457
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContactInfo;

    .line 458
    .local v4, "val":Lcom/cmdm/control/bean/ContactInfo;
    iput-object p2, v4, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v4}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 463
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    .end local v4    # "val":Lcom/cmdm/control/bean/ContactInfo;
    :catch_0
    move-exception v5

    .line 466
    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    .line 465
    :catchall_0
    move-exception v5

    .line 466
    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 467
    throw v5
.end method

.method public aC()V
    .locals 5

    .prologue
    .line 144
    new-instance v1, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 146
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "-1"

    aput-object v4, v2, v3

    .line 147
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "type=?"

    invoke-virtual {v0, v3, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public aD()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    invoke-virtual {v0}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->update()V

    .line 246
    return-void
.end method

.method public aE()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 504
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 505
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 506
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "shortnum"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1, v0, v5, v5}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public ad(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "contactnum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContactInfo;>;"
    return-object v0
.end method

.method public ae(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "contactid"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public af(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 112
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public ag(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public ah(Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 7
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 333
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 334
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 335
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactnum=?"

    .line 336
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    .line 338
    .local v0, "contact":Lcom/cmdm/control/bean/ContactInfo;
    return-object v0
.end method

.method public ai(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "shortnum"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 350
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 351
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 352
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " shortnum=?"

    .line 353
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    .line 355
    .local v0, "contact":Lcom/cmdm/control/bean/ContactInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 356
    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    .line 359
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public aj(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "contactid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 364
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 366
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 367
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactid=?"

    .line 368
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    .line 370
    .local v0, "contact":Lcom/cmdm/control/bean/ContactInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 371
    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 374
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "statu"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "start"    # Ljava/lang/String;
    .param p5, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    new-instance v7, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 179
    .local v7, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v7}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 180
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "select":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const-string v4, "1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " and (statu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or statu=2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " and ( contactname like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    const-string v5, "%\" or contactnum like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string v5, "%\" or namepinyin like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_1
    const-string v3, " namepinyin COLLATE LOCALIZED asc"

    .line 196
    .local v3, "orderBy":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 197
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    return-object v6

    .line 185
    .end local v3    # "orderBy":Ljava/lang/String;
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " and statu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public b(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 2
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 254
    new-instance v0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->update(Lcom/cmdm/control/bean/ContactInfo;)V

    .line 256
    return-void
.end method

.method public c(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 259
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 260
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 261
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 263
    const-string v5, "statu"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    const-string v5, "type"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 269
    const-string v5, "contactname"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 271
    const-string v5, "defaultcontactnum"

    .line 272
    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 274
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactnum=?"

    .line 275
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    return-void

    .line 265
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_2
    const-string v5, "statu"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 279
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 280
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 281
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 283
    const-string v5, "statu"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    const-string v5, "photouri"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->photoUri:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "photoType"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 292
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactnum=?"

    .line 293
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    return-void

    .line 285
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_0
    const-string v5, "statu"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 301
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 303
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 305
    const-string v5, "shortnum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 307
    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 308
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactnum=?"

    .line 309
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public f(Lcom/cmdm/control/bean/ContactInfo;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 7
    .param p1, "contactinfo"    # Lcom/cmdm/control/bean/ContactInfo;

    .prologue
    .line 315
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 316
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 317
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 318
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " contactnum=?"

    .line 319
    .local v4, "whereClause":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    .line 321
    .local v0, "contact":Lcom/cmdm/control/bean/ContactInfo;
    return-object v0
.end method

.method public s(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ContactInfo;>;"
    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    .line 397
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 398
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 410
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 417
    :goto_1
    return-void

    .line 402
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    new-array v3, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 403
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContactInfo;

    iget-object v4, v4, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 404
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, "contactnum=?"

    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 414
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    .line 413
    :catchall_0
    move-exception v4

    .line 414
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    .line 415
    throw v4
.end method
