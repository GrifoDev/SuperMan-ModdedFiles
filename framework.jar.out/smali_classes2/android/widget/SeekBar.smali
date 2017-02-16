.class public Landroid/widget/SeekBar;
.super Landroid/widget/AbsSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SeekBar$OnSeekBarChangeListener;,
        Landroid/widget/SeekBar$SemOnSeekBarHoverListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onHoverChanged(III)V
    .locals 2
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$SemOnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    .line 222
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 218
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 135
    invoke-virtual {p0}, Landroid/widget/SeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 132
    :cond_0
    return-void
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    .line 92
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0, p3, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 89
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 197
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SeekBar$SemOnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 196
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 112
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 110
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$SemOnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    .line 207
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 120
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 118
    :cond_0
    return-void
.end method

.method public semSetOnSeekBarHoverListener(Landroid/widget/SeekBar$SemOnSeekBarHoverListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    .prologue
    .line 189
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$SemOnSeekBarHoverListener;

    .line 188
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 105
    return-void
.end method
