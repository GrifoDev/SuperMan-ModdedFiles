.class public Lcom/cmdm/control/database/SettingDBContext;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/ISettingDBStrategy;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBContext;->mCacheStrategy:Lcom/cmdm/control/database/ISettingDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/ISettingDBStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
