.class public Lcom/cmdm/control/database/SettingDBContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;


# direct methods
.method public constructor <init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/database/ISettingDBStrategy",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    .local p1, "cacheStrategy":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    .line 13
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 39
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/ISettingDBStrategy;->getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/ISettingDBStrategy;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/ISettingDBStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
