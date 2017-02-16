.class public Lcom/android/systemui/statusbar/stack/StackViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "StackViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public height:I

.field public hideSensitive:Z

.field public isBottomBar:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    :cond_0
    return-void
.end method
