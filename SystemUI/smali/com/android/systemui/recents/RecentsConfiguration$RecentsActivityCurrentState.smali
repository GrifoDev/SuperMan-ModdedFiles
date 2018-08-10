.class public Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentsActivityCurrentState"
.end annotation


# instance fields
.field public animating:I

.field public layout:I

.field public layoutType:I

.field public mode:I

.field public option:I

.field public visible:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->option:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layoutType:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->animating:I

    return-void
.end method
