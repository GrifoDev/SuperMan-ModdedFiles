.class public Lcom/cmdm/control/biz/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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

    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and ( contactname like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\" or contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\" or namepinyin like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v2, " namepinyin COLLATE LOCALIZED asc"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

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

    new-instance v1, Lcom/cmdm/control/database/Impl/CxContactStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/Impl/CxContactStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

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

    :cond_0
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and ( contactname like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\" or contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\" or namepinyin like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v3, " namepinyin COLLATE LOCALIZED asc"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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

    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " and contactnum like \"%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v2, " namepinyin COLLATE LOCALIZED asc"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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

    new-instance v5, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v3, "type=? and statu!=?"

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const-string v2, "contactname asc"

    invoke-virtual {v1, v3, v4, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/cmdm/control/bean/GetCornetBindingResult;)V
    .locals 9

    new-instance v4, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v8, "shortnum"

    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cmdm/control/bean/CornetBinding;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBinding;->shortMobile:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v7, p1, Lcom/cmdm/control/bean/GetCornetBindingResult;->cornetBindingList:Lcom/cmdm/control/bean/CornetBindingList;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBindingList;->cornetBindingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cmdm/control/bean/CornetBinding;

    iget-object v7, v7, Lcom/cmdm/control/bean/CornetBinding;->longMobile:Ljava/lang/String;

    invoke-static {v7}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    const-string v6, " contactnum=?"

    invoke-virtual {v1, v0, v6, v5}, Lcom/cmdm/control/database/DBContext;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

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

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ContactInfo;

    invoke-virtual {p0, v3}, Lcom/cmdm/control/biz/q;->d(Lcom/cmdm/control/bean/ContactInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    throw v4
.end method

.method public a(Lcom/cmdm/control/bean/ContactInfo;Ljava/lang/String;)Z
    .locals 4

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    iput-object p2, p1, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public a(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 6
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

    new-instance v3, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContactInfo;

    iput-object p2, v4, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    throw v5
.end method

.method public aC()V
    .locals 5

    new-instance v1, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "-1"

    aput-object v4, v2, v3

    const-string v3, "type=?"

    invoke-virtual {v0, v3, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public aD()V
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->update()V

    return-void
.end method

.method public aE()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "shortnum"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5, v5}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public ad(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public ae(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public af(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ag(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ah(Ljava/lang/String;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v4, " contactnum=?"

    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    return-object v0
.end method

.method public ai(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const-string v4, " shortnum=?"

    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public aj(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const-string v4, " contactid=?"

    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
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

    const/4 v2, 0x0

    new-instance v7, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v7, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v7}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

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

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " and ( contactname like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\" or contactnum like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\" or namepinyin like \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, " namepinyin COLLATE LOCALIZED asc"

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

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    return-object v6

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

    new-instance v0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->update(Lcom/cmdm/control/bean/ContactInfo;)V

    return-void
.end method

.method public c(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "statu"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v5, "type"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "contactname"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, "defaultcontactnum"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v4, " contactnum=?"

    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v5, "statu"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "statu"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v5, "photouri"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->photoUri:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "photoType"

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v4, " contactnum=?"

    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v5, "statu"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "shortnum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v4, " contactnum=?"

    invoke-virtual {v1, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public f(Lcom/cmdm/control/bean/ContactInfo;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 7

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v4, " contactnum=?"

    invoke-virtual {v1, v4, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ContactInfo;

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

    new-instance v2, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/q;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->beginTransaction()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x1

    :try_start_1
    new-array v3, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContactInfo;

    iget-object v4, v4, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "contactnum=?"

    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->endTransaction()V

    throw v4
.end method
