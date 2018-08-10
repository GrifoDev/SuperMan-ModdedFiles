.class public Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
.super Ljava/lang/Object;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualVoicemailTask"
.end annotation


# instance fields
.field private final mReplyTo:Landroid/os/Messenger;

.field private final mTaskId:I


# direct methods
.method private constructor <init>(Landroid/os/Messenger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    check-cast p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    iget v2, p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final finish()V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    :try_start_0
    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VvmService"

    const-string/jumbo v3, "Cannot send MSG_TASK_ENDED, remote handler no longer exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    return v0
.end method
