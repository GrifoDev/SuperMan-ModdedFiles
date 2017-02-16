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

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    .line 14
    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    .line 15
    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    .line 16
    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/sec/clipboard/data/ClipboardPolicy;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    .line 21
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    .line 22
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    .line 23
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles()I

    move-result v0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    .line 19
    return-void
.end method


# virtual methods
.method public canReadAcrossProfiles()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    return v0
.end method

.method public isClipboardAllowed()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    return v0
.end method

.method public isClipboardShareAllowed()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    return v0
.end method

.method public isEnabled()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    return v0
.end method

.method public setCanReadAcrossProfiles(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->canReadAcrossProfiles:I

    .line 58
    return-void
.end method

.method public setIsClipboardAllowed(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 43
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardAllowed:I

    .line 42
    return-void
.end method

.method public setIsClipboardShareAllowed(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isClipboardShareAllowed:I

    .line 50
    return-void
.end method

.method public setIsEnabled(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 35
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    .line 34
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    .line 26
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardPolicy;->isEnabled:I

    goto :goto_0
.end method
