.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get3()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 167
    .local v1, "usable":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-wrap0(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v2, "CAE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-object v0

    .line 166
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "usable":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "usable":Z
    goto :goto_0

    .line 165
    .end local v1    # "usable":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "usable":Z
    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get3()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 178
    .local v0, "usable":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    const-string/jumbo v3, "CAELogger"

    .line 180
    const-string/jumbo v4, "E"

    const-string/jumbo v5, "CAE"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-wrap0(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void
.end method
