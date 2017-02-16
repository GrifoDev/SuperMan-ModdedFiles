.class public Lcom/samsung/android/knox/SemPersonaManager$StateManager;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/knox/ISemPersonaManager;

.field private userId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;
    .param p3, "userId"    # I

    .prologue
    .line 3556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3557
    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 3558
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mContext:Landroid/content/Context;

    .line 3559
    iput p3, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    .line 3556
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;ILcom/samsung/android/knox/SemPersonaManager$StateManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/knox/ISemPersonaManager;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 4
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;

    .prologue
    const/4 v3, 0x0

    .line 3601
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3604
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3605
    :catch_0
    move-exception v0

    .line 3606
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3609
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getPreviousState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3576
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3579
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3580
    :catch_0
    move-exception v0

    .line 3581
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3584
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3564
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3566
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3567
    :catch_0
    move-exception v0

    .line 3568
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3571
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public inState(Lcom/samsung/android/knox/SemPersonaState;)Z
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 3590
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3592
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3593
    :catch_0
    move-exception v0

    .line 3594
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3597
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 3625
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3628
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3629
    :catch_0
    move-exception v0

    .line 3630
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3633
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 3613
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    .line 3616
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3617
    :catch_0
    move-exception v0

    .line 3618
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3621
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
