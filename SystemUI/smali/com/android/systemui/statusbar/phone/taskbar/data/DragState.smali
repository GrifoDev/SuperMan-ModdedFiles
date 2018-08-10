.class public Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field private final DEBUGGABLE:Z

.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field public final mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field public mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

.field public mItemType:I

.field public mOriginalScreen:I

.field private mReceiver:Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;

.field public mRevertDrag:Z

.field private mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

.field private mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method public constructor <init>(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->DEBUGGABLE:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mBlockDeleteFromSource:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDeleted:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mRevertDrag:Z

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItemType:I

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItemType:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->initItemInfo(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private animateDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->getViewForItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getAnimGroup()I

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->getViewForItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    goto :goto_0
.end method

.method private createApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    if-eqz v4, :cond_b

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v12, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    const-string/jumbo v21, "profile"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "profile"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v19

    :cond_0
    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v19

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->checkSameComponentAppExisted(ILandroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string/jumbo v21, "[DS]DragState"

    const-string/jumbo v22, "createApp(). This dragged item is aleady existed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v21, 0x0

    return-object v21

    :cond_4
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x81

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/4 v9, 0x1

    :goto_0
    new-instance v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v21, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-object/from16 v0, v21

    invoke-direct {v11, v0, v6, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v21, 0x4

    move/from16 v0, v21

    iput v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v21

    if-eqz v21, :cond_6

    iget v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    iput v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :cond_6
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_d

    const-string/jumbo v21, "[DS]DragState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "createApp is Knox app: ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const-string/jumbo v21, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_7

    iput-object v8, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->customIcon:Z

    :cond_7
    const-string/jumbo v21, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    iput-object v15, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_8
    const-string/jumbo v21, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    if-eqz v10, :cond_9

    iput-object v10, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    :cond_9
    :goto_1
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v14, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    const-wide/16 v22, -0x67

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    :cond_b
    return-object v11

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    if-eqz v13, :cond_9

    new-instance v18, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v21, "[DS]DragState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Cannot find PackageInfo for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private deleteFromSource()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteFromSource mBlockDeleteFromSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mDragOrigin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mBlockDeleteFromSource:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    goto :goto_0
.end method

.method private findActivityForComponent(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0xc0000

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "[DS]DragState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findActivityForComponent size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initItemInfo(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 30

    const/16 v17, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v27

    const v28, 0x7f0a019a

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const-string/jumbo v27, "itemId"

    const-wide/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v27, "taskId"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v7, p3

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    :cond_0
    if-eqz v7, :cond_1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v4

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->DEBUGGABLE:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    const-string/jumbo v27, "[DS]DragState"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "initItemInfo drag id = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", type="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_8

    const-wide/16 v28, -0x1

    cmp-long v27, v12, v28

    if-gtz v27, :cond_3

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v27

    sget-object v28, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    :cond_3
    sparse-switch p2, :sswitch_data_0

    :goto_0
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0701bb

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    add-int/lit8 v10, v27, -0x2

    const/4 v15, 0x0

    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10, v10}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v15

    :goto_1
    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-direct {v6, v15}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mCacheDragView:Landroid/view/View;

    new-instance v20, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v15}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {v20 .. v22}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    if-ltz v27, :cond_4

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    if-gez v27, :cond_e

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->DEBUGGABLE:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    const-string/jumbo v27, "[DS]DragState"

    const-string/jumbo v28, "Drag shadow touch point must not be negative"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v27, 0x0

    return-object v27

    :sswitch_1
    const/4 v5, 0x0

    if-eqz v4, :cond_6

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_7

    move-object/from16 v17, v5

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->getItemById(J)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    goto :goto_2

    :cond_7
    const/16 v27, 0x0

    return-object v27

    :cond_8
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_9

    const/16 v27, 0x0

    return-object v27

    :cond_9
    const-string/jumbo v27, "profile"

    const-wide/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v25

    const-wide/16 v28, -0x1

    cmp-long v27, v18, v28

    if-lez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string/jumbo v28, "user"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v24

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v8, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->findActivityForComponent(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v16

    const/4 v5, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->createApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v5

    goto :goto_3

    :cond_b
    if-eqz v5, :cond_c

    move-object/from16 v17, v5

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const/16 v27, 0x0

    return-object v27

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f080206

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10, v10}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v15

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    if-ltz v27, :cond_f

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    if-gez v27, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->DEBUGGABLE:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    const-string/jumbo v27, "[DS]DragState"

    const-string/jumbo v28, "Drag shadow dimensions must not be negative"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/16 v27, 0x0

    return-object v27

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->setShadow(Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)V

    return-object v17

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;IIIII)Z
    .locals 12

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mReceiver:Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->getContainerType()J

    move-result-wide v10

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mBlockDeleteFromSource:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]DragState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveItemTo ::  screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_2

    const-wide/16 v4, -0x67

    cmp-long v3, v10, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v3, v4, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V

    :cond_1
    move/from16 v0, p8

    iput v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    move/from16 v0, p8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->setPosition(I)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "[DS]DragState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveItemTo :: dragOrigin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  receiver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", receiver parent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eq p3, p2, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :cond_4
    move-object v3, p2

    move-object v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->setItemLocation(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;IIIIIJ)V

    if-eq p3, p2, :cond_5

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    if-eqz p3, :cond_5

    instance-of v3, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-eqz v3, :cond_5

    check-cast p2, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->getViewForItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mAnimateVied:Landroid/view/View;

    :cond_5
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    return-object v0
.end method

.method public getShadow()Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;IIIII)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;IIIIIZ)Z
    .locals 9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveItemTo :: x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[DS]DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->moveItemTo(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;IIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;->show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    if-eqz p7, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->animateDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/DragReceivable;)V

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public onDelete()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->deleteFromSource()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->clearSurface()V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDeleted:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->unbind()V

    :cond_2
    return-void
.end method

.method public onDrop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    return-void
.end method

.method public onEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;->clearSurface()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mHasEnded:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->deleteFromSource()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;->show(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    goto :goto_0
.end method

.method public setShadow(Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mShadow:Lcom/android/systemui/statusbar/phone/taskbar/data/ShadowBuilder;

    return-void
.end method

.method public updateItemInfo(Landroid/content/Intent;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->initItemInfo(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
