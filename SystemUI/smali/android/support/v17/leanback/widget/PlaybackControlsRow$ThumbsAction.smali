.class public abstract Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThumbsAction"
.end annotation


# static fields
.field public static OUTLINE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static SOLID:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;->SOLID:I

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;->OUTLINE:I

    return-void
.end method
