.class public Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextWakeUpVoiceAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static MODE_REFERENCE_DATA:I = 0x0

.field static MODE_REGISTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextWakeUpVoiceAttribute"


# instance fields
.field private mGramData:[B

.field private mMode:I

.field private mNetData:[B

.field private mVoiceMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    iput p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    sget v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REFERENCE_DATA:I

    iput v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    iput-object p1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    iput-object p2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-direct {p0}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "voice_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v1, "net_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v1, "gram_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mMode:I

    sget v1, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->MODE_REGISTER:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mVoiceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mNetData:[B

    if-nez v0, :cond_2

    const-string/jumbo v0, "SContextWakeUpVoiceAttribute"

    const-string/jumbo v1, "The net data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v0, :cond_3

    const-string/jumbo v0, "SContextWakeUpVoiceAttribute"

    const-string/jumbo v1, "The gram data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v3
.end method
