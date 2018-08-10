.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/model/PluginTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;,
        Lcom/android/systemui/recents/model/Task$TaskKey;
    }
.end annotation


# instance fields
.field public affiliationColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public affiliationTaskId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public appInfoDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public bounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public dismissDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public dockedTaskId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public fullTaskId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "group_"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isFullscreen:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isKnoxTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isPairedTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isPrivateMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isTaskLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field public lockDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public unlockDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useBlackOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Lcom/android/systemui/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZZZLjava/lang/String;Ljava/lang/String;ZZII)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p2, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput p2, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    iput p3, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    iput-object p4, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_2
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget v1, v4, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    :goto_3
    iget v4, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-static {v4, v1}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iget v4, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    const/16 v5, 0x2d

    const/16 v6, 0x2d

    const/16 v7, 0x2d

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, p0, Lcom/android/systemui/recents/model/Task;->useBlackOnPrimaryColor:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isFullscreen:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->lockDescription:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isKnoxTask:Z

    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    move/from16 v0, p29

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->dockedTaskId:I

    move/from16 v0, p30

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->fullTaskId:I

    return-void

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    move/from16 p3, p10

    goto/16 :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->lockDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->lockDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isStackTask:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isFullscreen:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isFullscreen:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isKnoxTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isKnoxTask:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->dockedTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->dockedTaskId:I

    iget v0, p1, Lcom/android/systemui/recents/model/Task;->fullTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->fullTaskId:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isAffiliatedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "affTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, " dockable=N"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, " launchTarget=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " freeform=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, " locked=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getKey()Lcom/samsung/systemui/splugins/recents/model/PluginTask$PluginTaskKey;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public isAffiliatedTask()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, p0, Lcom/android/systemui/recents/model/Task;->affiliationTaskId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDockable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    return v0
.end method

.method public isFreeformTask()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPairedTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    return v0
.end method

.method public isTaskLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    return v0
.end method

.method public notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2, p0, p1}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    return-void
.end method

.method public setStackId(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->setStackId(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskStackIdChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
