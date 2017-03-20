.class public Lcom/cmdm/control/biz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "guanjianzi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlacklistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v3, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 52
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "select":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " and blacklistnum like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    :cond_0
    const-string v4, "select"

    invoke-static {v4, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    return-object v1
.end method

.method public a(Lcom/cmdm/control/bean/BlacklistInfo;)Z
    .locals 4
    .param p1, "blacklistInfo"    # Lcom/cmdm/control/bean/BlacklistInfo;

    .prologue
    .line 39
    new-instance v2, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 42
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 44
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlacklistInfo;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    new-instance v2, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;

    iget-object v4, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;-><init>(Landroid/content/Context;)V

    .line 25
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 28
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 35
    const/4 v4, 0x0

    return-object v4

    .line 29
    :cond_0
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/BlacklistInfo;

    .line 30
    invoke-virtual {v4}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 31
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, "blacklistnum=?"

    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 8
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 65
    new-instance v3, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/c;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 68
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v4, v6

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 69
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v2, "type=? and blacklistnum=?"

    .line 70
    .local v2, "select":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlacklistInfo;

    .line 72
    .local v0, "b":Lcom/cmdm/control/bean/BlacklistInfo;
    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method
