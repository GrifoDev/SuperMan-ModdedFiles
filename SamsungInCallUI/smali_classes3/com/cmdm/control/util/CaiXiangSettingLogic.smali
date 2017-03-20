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

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "3"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->mode:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    .line 44
    const-string v0, "\u6240\u6709\u4eba"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/cmdm/control/util/CaiXiangSettingLogic;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;

    invoke-direct {v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    .line 188
    :cond_0
    sget-object v0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cZ:Lcom/cmdm/control/util/CaiXiangSettingLogic;

    return-object v0
.end method


# virtual methods
.method public getDesString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "desstring":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "desstring"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    .end local v0    # "desstring":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 128
    .restart local v0    # "desstring":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v1    # "e":Lcom/cmdm/control/exception/a;
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    goto :goto_1
.end method

.method public getFromwhere()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "fromWhere":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "fromwhere"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    .end local v1    # "fromWhere":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 157
    .restart local v1    # "fromWhere":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Lcom/cmdm/control/exception/a;
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "settingmode":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v3, "settingmode"

    invoke-virtual {v2, v3}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    .end local v1    # "settingmode":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 58
    .restart local v1    # "settingmode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Lcom/cmdm/control/exception/a;
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

    .prologue
    .line 83
    const/4 v4, 0x0

    .line 85
    .local v4, "settingobjectlist":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v6, "settingobjectlist"

    invoke-virtual {v5, v6}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 90
    :goto_0
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "a":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "mListString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_0

    .line 99
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mListString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-object v3

    .line 86
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v1    # "e":Lcom/cmdm/control/exception/a;
    .restart local v0    # "a":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "mListString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mListString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 192
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setMode(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setSettingObjectList(Ljava/util/ArrayList;)V

    .line 194
    const-string v0, "\u6240\u6709\u4eba"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setDesString(Ljava/lang/String;)V

    .line 195
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->setFromwhere(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Object;

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v1, "str_content":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v2, p1, v1}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method

.method public setDesString(Ljava/lang/String;)V
    .locals 2
    .param p1, "desString"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, ","

    const-string v1, "\uff0c"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->da:Ljava/lang/String;

    .line 147
    const-string v0, "desstring"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public setFromwhere(Ljava/lang/String;)V
    .locals 1
    .param p1, "fromwhere"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->dc:Ljava/lang/String;

    .line 175
    const-string v0, "fromwhere"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->mode:Ljava/lang/String;

    .line 76
    const-string v0, "settingmode"

    invoke-virtual {p0, v0, p1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
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

    .prologue
    .line 108
    .local p1, "settingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cmdm/control/util/CaiXiangSettingLogic;->cY:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v1, "settingobjectlist":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 118
    .end local v0    # "i":I
    :cond_0
    const-string v2, "settingobjectlist"

    invoke-virtual {p0, v2, v1}, Lcom/cmdm/control/util/CaiXiangSettingLogic;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 113
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
