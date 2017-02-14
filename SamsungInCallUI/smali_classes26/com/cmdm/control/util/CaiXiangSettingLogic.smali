.class public Lcom/cmdm/control/util/CaiXiangSettingLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;


# instance fields
.field private cY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cn:Lcom/cmdm/control/util/file/FileReadWrite;

.field private da:Ljava/lang/String;

.field private dc:Ljava/lang/String;

.field private mode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->mode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    const-string v0, "\u6240\u6709\u4eba"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    return-void
.end method

.method public static getInstance()Lcom/cmdm/control/util/CaiXiangSettingLogic;
    .locals 1

    sget-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;

    invoke-direct {v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    :cond_0
    sget-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    return-object v0
.end method


# virtual methods
.method public getDesString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "desstring"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    goto :goto_1
.end method

.method public getFromwhere()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "fromwhere"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMode()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "settingmode"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->mode:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSettingObjectList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v6, "settingobjectlist"

    invoke-virtual {v5, v6}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_0

    :goto_2
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    :cond_0
    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setSettingObjectList(Ljava/util/ArrayList;)V

    const-string v0, "\u6240\u6709\u4eba"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setDesString(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setFromwhere(Ljava/lang/String;)V

    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v2, p1, v1}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method

.method public setDesString(Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    const-string v1, "\uff0c"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    const-string v0, "desstring"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFromwhere(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    const-string v0, "fromwhere"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->mode:Ljava/lang/String;

    const-string v0, "settingmode"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSettingObjectList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const-string v2, "settingobjectlist"

    invoke-virtual {p0, v2, v1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
