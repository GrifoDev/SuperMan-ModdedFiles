.class public Landroid/media/audiopolicy/AudioPolicy$Builder;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private mIsFocusPolicy:Z

.field private mLooper:Landroid/os/Looper;

.field private mMixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioMix argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/media/audiopolicy/AudioPolicy;
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/audiopolicy/AudioMix;

    iget v0, v8, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v8, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be a focus policy without an AudioPolicyFocusListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy;

    new-instance v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    iget-boolean v6, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    invoke-direct/range {v0 .. v7}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZLandroid/media/audiopolicy/AudioPolicy;)V

    return-object v0
.end method

.method public setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    return-void
.end method

.method public setAudioPolicyStatusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    return-void
.end method

.method public setIsAudioFocusPolicy(Z)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null Looper argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method
