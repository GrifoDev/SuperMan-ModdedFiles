.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;
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
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get3()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 68
    .local v1, "usable":Z
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-wrap0(Z)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v2, "CAE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-object v0

    .line 67
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "usable":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "usable":Z
    goto :goto_0

    .line 66
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
    const/4 v1, 0x0

    .line 77
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-get3()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 79
    .local v0, "usable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v2

    .line 82
    const-string/jumbo v3, "CAELogger"

    .line 83
    const-string/jumbo v4, "T"

    const-string/jumbo v5, "CAE"

    .line 84
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->-wrap0(Z)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v4, v5, v1, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void

    .end local v0    # "usable":Z
    :cond_1
    move v0, v1

    .line 78
    goto :goto_0

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0
.end method
