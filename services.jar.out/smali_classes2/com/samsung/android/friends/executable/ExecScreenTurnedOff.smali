.class public Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;
.super Ljava/lang/Object;
.source "ExecScreenTurnedOff.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final LOCK_SCREEN_STATE_FILE_NAME:Ljava/lang/String; = "no_lock_screen"

.field private static final TAG:Ljava/lang/String; = "ExecScreenTurnedOff"


# instance fields
.field private final mStateFile:Ljava/io/File;

.field private final mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/friends"

    const-string/jumbo v2, "no_lock_screen"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ExecScreenTurnedOff"

    const-string/jumbo v1, "no LockScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public executeOnSameThread(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
