.class Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;
.super Landroid/transition/Transition$EpicenterCallback;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEpicenterCallback"
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setEpicenter(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "epicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 1028
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-void
.end method
