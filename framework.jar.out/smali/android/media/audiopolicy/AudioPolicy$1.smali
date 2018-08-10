.class Landroid/media/audiopolicy/AudioPolicy$1;
.super Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method constructor <init>(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 3

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v2, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyMixStateUpdate(Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v2}, Landroid/media/audiopolicy/AudioPolicy;->-get0(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p2, v0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
