.class public Lcom/android/systemui/recents/DebugPageActivity;
.super Landroid/app/Activity;
.source "DebugPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;,
        Lcom/android/systemui/recents/DebugPageActivity$Primitives;
    }
.end annotation


# static fields
.field private static final TaskAnimationCheckList:[Ljava/lang/String;


# instance fields
.field private mDebugPagePref:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/DebugPageActivity;->TaskAnimationCheckList:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "transitionEnterFromHomeDelay"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "taskViewEnterFromHomeDuration"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "taskViewEnterFromHomeStaggerDelay"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "taskViewExitToHomeDuration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/DebugPageActivity;->TaskAnimationCheckList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {v0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/DebugPageActivity;->mDebugPagePref:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/DebugPageActivity;->mDebugPagePref:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
