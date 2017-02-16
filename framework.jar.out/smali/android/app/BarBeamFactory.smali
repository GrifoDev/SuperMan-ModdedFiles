.class public Landroid/app/BarBeamFactory;
.super Ljava/lang/Object;
.source "BarBeamFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarBeamFactory"


# instance fields
.field private mbarbeamcmd:Landroid/app/BarBeamCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/app/Hop;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "HopSequencearray"    # [Landroid/app/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 59
    :try_start_1
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p2}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_1
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Landroid/app/BarBeamException;
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public StartBarBeamFactory([B)Z
    .locals 6
    .param p1, "barcode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, "ret":Z
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4, p1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    .line 114
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4}, Landroid/app/BarBeamCommand;->startBeaming()V

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 117
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v4, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v4}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    const/4 v3, 0x1

    .line 131
    :cond_0
    return v3

    .line 122
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "BarBeamFactory"

    const-string/jumbo v5, "Failed loading MobeamLED implementation: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance v4, Landroid/app/BarBeamException;

    const-string/jumbo v5, "BarBeamException in setHopSequence :"

    invoke-direct {v4, v5, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public StopBarBeamFactory()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 142
    .local v3, "ret":Z
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4}, Landroid/app/BarBeamCommand;->stopBeaming()V

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 145
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v4, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v4}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_1

    .line 146
    const/4 v3, 0x1

    .line 158
    :cond_0
    return v3

    .line 150
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "BarBeamFactory"

    const-string/jumbo v5, "BarBeamException in getCurrentStatus: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v4, Landroid/app/BarBeamException;

    const-string/jumbo v5, "BarBeamException in getCurrentStatus :"

    invoke-direct {v4, v5, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "Context is null"

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    :try_start_0
    const-string/jumbo v2, "barbeam"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamCommand;

    .line 79
    .local v1, "m":Landroid/app/BarBeamCommand;
    invoke-interface {v1}, Landroid/app/BarBeamCommand;->isImplementationCompatible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 80
    .end local v1    # "m":Landroid/app/BarBeamCommand;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "BarBeamFactory"

    const-string/jumbo v3, "Failed loading MobeamLED implementation: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "No implementaion found."

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 3
    .param p1, "HopSequence"    # [Landroid/app/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p1}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/app/BarBeamException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
