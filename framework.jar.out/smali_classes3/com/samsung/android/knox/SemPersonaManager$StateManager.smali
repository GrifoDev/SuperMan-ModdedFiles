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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;ILcom/samsung/android/knox/SemPersonaManager$StateManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ISemPersonaManager;I)V

    return-void
.end method


# virtual methods
.method public fireEvent(Landroid/content/pm/PersonaNewEvent;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.fireEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public getPreviousState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.getState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getPreviousState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public getState()Lcom/samsung/android/knox/SemPersonaState;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getState(I)Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method public inState(Lcom/samsung/android/knox/SemPersonaState;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.isAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StateManager.setAttribute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->mService:Lcom/samsung/android/knox/ISemPersonaManager;

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->userId:I

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getState() Cannot make call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
