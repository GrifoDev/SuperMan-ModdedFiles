.class public Landroid/sec/clipboard/data/ClipboardPolicy;
.super Ljava/lang/Object;
.source "ClipboardPolicy.java"


# instance fields
.field private canReadAcrossProfiles:I

.field private isClipboardAllowed:I

.field private isClipboardShareAllowed:I

.field private isEnabled:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    return-void
.end method

.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    return-void
.end method


# virtual methods
.method public canReadAcrossProfiles()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    return v0
.end method

.method public isClipboardAllowed()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    return v0
.end method

.method public isClipboardShareAllowed()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    return v0
.end method

.method public isEnabled()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    return v0
.end method

.method public setCanReadAcrossProfiles(I)V
    .locals 0

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    return-void
.end method

.method public setIsClipboardAllowed(I)V
    .locals 0

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    return-void
.end method

.method public setIsClipboardShareAllowed(I)V
    .locals 0

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    return-void
.end method

.method public setIsEnabled(I)V
    .locals 0

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    goto :goto_0
.end method
