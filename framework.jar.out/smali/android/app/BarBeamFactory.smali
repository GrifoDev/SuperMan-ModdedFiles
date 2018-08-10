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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/app/Hop;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p2}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_1
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public StartBarBeamFactory([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4, p1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4}, Landroid/app/BarBeamCommand;->startBeaming()V

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v4, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v4}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "BarBeamFactory"

    const-string/jumbo v5, "Failed loading MobeamLED implementation: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v4}, Landroid/app/BarBeamCommand;->stopBeaming()V

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v4, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v4}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "BarBeamFactory"

    const-string/jumbo v5, "BarBeamException in getCurrentStatus: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Landroid/app/BarBeamException;

    const-string/jumbo v5, "BarBeamException in getCurrentStatus :"

    invoke-direct {v4, v5, v1}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "Context is null"

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    const-string/jumbo v2, "barbeam"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamCommand;

    invoke-interface {v1}, Landroid/app/BarBeamCommand;->isImplementationCompatible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BarBeamFactory"

    const-string/jumbo v3, "Failed loading MobeamLED implementation: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v2, Landroid/app/BarBeamException;

    const-string/jumbo v3, "No implementaion found."

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p1}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    new-instance v1, Landroid/app/BarBeamException;

    const-string/jumbo v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
