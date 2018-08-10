.class public final Landroid/media/AudioFocusRequest$Builder;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFocusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttr:Landroid/media/AudioAttributes;

.field private mDelayedFocus:Z

.field private mFocusGain:I

.field private mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mFocusLocked:Z

.field private mListenerHandler:Landroid/os/Handler;

.field private mPausesOnDuck:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/media/AudioFocusRequest;->-get0()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFocusRequest;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/media/AudioFocusRequest;->-get0()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    iput-boolean v1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-get1(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-get3(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-get4(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-get2(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->willPauseWhenDucked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->acceptsDelayedFocusGain()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFocusRequest;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t use delayed focus or pause on duck without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    or-int/lit8 v2, v0, 0x0

    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    :cond_2
    or-int v5, v0, v1

    new-instance v0, Landroid/media/AudioFocusRequest;

    iget-object v1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    iget v4, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest;)V

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    return-object p0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;
    .locals 3

    invoke-static {p1}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal audio focus gain type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    return-object p0
.end method

.method public setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    return-object p0
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Illegal null focus listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Illegal null focus listener or handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    return-object p0
.end method
