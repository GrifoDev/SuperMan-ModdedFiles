.class public Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;
.super Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUGGABLE:Z

.field private final HOVER_DETECT_TIME_MS:I

.field private mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

.field private mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mAeroWindowRect:Landroid/graphics/Rect;

.field private mAppIconPositionX:F

.field private mAppIconPositionY:F

.field private mBinding:Z

.field private mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mHasEnded:Z

.field private mHoveredIconRect:Landroid/graphics/Rect;

.field private mIsHorizontalOrder:Z

.field private final mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

.field private mLastTouchDownPoint:Landroid/graphics/Point;

.field private mMaxCellCount:I

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private mRepeatCallingAnimation:Z

.field private mShowAeroWindowRunnable:Ljava/lang/Runnable;

.field private mShowHotseatTitle:Z

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowHotseatTitle:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->focusRunningItem(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setAeroWindowRect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setLastTouchDownPoint(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->startInCallUIAnimation(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method private addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ComponentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", canAddToShorcut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", taskDesc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const/4 v5, 0x0

    invoke-direct {v1, v4, p3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v4, p2, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: item.mIconBitmap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "item.mTitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationIconFromDb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v2, :cond_2

    invoke-virtual {p5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v4, p5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getIconFromTaskDescription(Landroid/content/Context;Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :cond_4
    if-eqz v2, :cond_5

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :cond_5
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_6
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_7
    const-wide/16 v4, -0x67

    iput-wide v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput p1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean p4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    move-result v4

    iput v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    return-void
.end method

.method private addShortcutByBixby(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addAppShortcutFromBixby():: ComponentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", UserHandle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {v1, v5, p1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V

    iput-object p2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    const-wide/16 v6, -0x67

    iput-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addShortcutItemFromBixby:: This item doesn\'t have icon!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_1
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iget v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v5, v1, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private findSameComponentShortcutApp(ILandroid/content/ComponentName;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private focusRunningItem(IZ)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getRunningItemList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v0, 0x0

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-ne v5, p1, :cond_4

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v4, :cond_6

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsLayoutRTL:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLeft()I

    move-result v5

    if-nez v5, :cond_2

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-nez v5, :cond_0

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsLayoutRTL:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getRight()I

    move-result v5

    if-nez v5, :cond_3

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-nez v5, :cond_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-eqz v5, :cond_1

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "focusRunningTaskApp:: Cannot find this item\'s view for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private isInsideAeroWindow(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private normalizeContents(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    const-string/jumbo v4, "normalizeContents"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-eq v3, v1, :cond_0

    iput v1, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private openContextMenu(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v0, 0x2

    new-array v6, v0, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const v2, 0x7f0a051c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    return-void

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private removeShortcutByBixby(Ljava/lang/String;)I
    .locals 9

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v0, v3

    :cond_1
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: removing pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: no shortcut pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetRunningAppItems()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setAeroWindowRect(Landroid/view/View;)V
    .locals 8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setLastTouchDownPoint(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private showAeroWindow(Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)V
    .locals 11

    const v10, 0x10502c0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AERO] showAeroWindow taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mAeroWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAeroWindow()V

    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    invoke-virtual {v4, v5, p0, v1, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->makeAeroWindow(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7e8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x108

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x53

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x35

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private startInCallUIAnimation(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0xc8

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    const-string/jumbo v4, "startInCallUIAnimation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1b1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$11;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRunningItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationIconFromDb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, p3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getIconFromTaskDescription(Landroid/content/Context;Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_b

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_c

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    const/4 v0, 0x1

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_5

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_5
    if-eqz v4, :cond_6

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_f

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :goto_2
    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v10, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_7
    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_8

    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: taskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", taskDesc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", needToSetDefaultIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", needToSetDefaultLabel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :cond_a
    :goto_3
    return-void

    :cond_b
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_c
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_d
    iput-boolean v10, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: Cannot find this item\'s view for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: There is no update for taskid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShortcutItem:: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", canAddToShorcut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v2, v3, p2, v5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateRunningTaskPosition(IIII)V

    iput p2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean p3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v2, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShortcutItem:: Cannot find this item\'s view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAppShortcutByBixby(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getComponentNameFromPkg(Ljava/lang/String;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addShortcutByBixby(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addAppShortcutByBixby():: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", compName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 4

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    :cond_0
    return v0
.end method

.method public addRunningTaskApp(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp():: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isAvailableUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp() This user is not available!!!:: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.spage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp() Bixby home is not available!!!:: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBixbyHomeTaskID:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->findMainActivityWithCategoryLauncher(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const/4 v4, 0x0

    move-object v3, p3

    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameComponentShortcutApp(ILandroid/content/ComponentName;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V

    :goto_0
    const-string/jumbo v0, "103"

    const-string/jumbo v1, "1503"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-eq v0, p1, :cond_5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v6, p1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_0
.end method

.method public beginBind(I)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAnimateChildInstantly:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_0
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v7, :cond_0

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-ne v0, v2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v6

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string/jumbo v7, ""

    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_3
    iget v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    iput v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    const/4 v5, 0x0

    if-eqz v6, :cond_4

    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->refreshBadge()V

    :cond_4
    if-nez v5, :cond_5

    const-string/jumbo v5, ""

    :cond_5
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public bindTaskbarItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAllViewsInLayout()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->normalizeContents(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->beginBind(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindTaskbarItems :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getChildCount()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->endBind()V

    return-void
.end method

.method public checkSameComponentAppExisted(ILandroid/content/ComponentName;)Z
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public checkSameComponentShortcutExisted(ILandroid/content/ComponentName;)Z
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public countSameComponentApp(ILandroid/content/ComponentName;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public createShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setContextClickable(Z)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-object v0
.end method

.method public dismissAeroWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AERO] dismissAeroWindow mAeroWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method public endBind()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAnimateChildInstantly:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    return-void
.end method

.method existsEmptyCell()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method findAllOccupiedCells()[Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v0

    new-array v3, v0, [Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findAllOccupied :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-ne v4, p1, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public focusRunningTaskApp(IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "focusRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", taskType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p6, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningTaskApp(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V

    :cond_1
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    const-string/jumbo v2, "focusRunningTaskApp()::Focus  Not in the list!! maybe launcher or other!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->focusRunningItem(IZ)V

    return-void
.end method

.method getCellCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountY()I

    move-result v0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    const-wide/16 v0, -0x67

    return-wide v0
.end method

.method public getRunningItemList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isFull()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public makeEmptySpace()I
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    if-ge v1, v0, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountY()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isTopTask(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeFreeformTask(I)V

    :cond_0
    :goto_0
    const-string/jumbo v2, "103"

    const-string/jumbo v3, "1506"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->moveToFront(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "This taskID is not running!! Remove and startActivity!: taskID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    const-string/jumbo v2, "103"

    const-string/jumbo v3, "1504"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onContextClick(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->openContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 10

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_HIERARCHY()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DRAG_HIERARCHY]onDragEvent :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " parent is not instance of TaskBarView!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->toStringDragEvnet(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :goto_1
    if-nez v3, :cond_5

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDragEvent dragState is null!! return false. event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->toStringDragEvnet(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " :: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  itemType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  dragOrigin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    return v5

    :cond_8
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mSecretItem:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    return v5

    :cond_9
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    const/4 v5, 0x4

    if-eq v0, v5, :cond_a

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :cond_a
    const/4 v5, 0x5

    if-ne v0, v5, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->isFull()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    :cond_b
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    if-ne v0, v5, :cond_e

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    :cond_c
    packed-switch v0, :pswitch_data_0

    :cond_d
    :goto_2
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    return v5

    :cond_e
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    return v5

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->cancelRealTimeReorder()V

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onDelete()V

    :cond_f
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onEnd()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeDraggingView()V

    goto :goto_2

    :pswitch_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderImmediately:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAppIconPositionX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAppIconPositionY:F

    goto :goto_2

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAppIconPositionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_10

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAppIconPositionY:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d

    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeContextMenu()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder(I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->setPosition(I)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/16 v2, 0x2002

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AERO] ACTION_HOVER_ENTER mTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->showAeroWindow(Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)V

    return v5

    :cond_3
    if-ne v0, v3, :cond_8

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->isInsideAeroWindow(II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    const-string/jumbo v3, "[AERO] ACTION_HOVER_EXIT from AppIconView. remove aero window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v2, :cond_8

    if-ne v0, v3, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    const-string/jumbo v3, "[AERO] ACTION_HOVER_EXIT from AeroWindow. remove aero window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v2, 0x1

    return v2

    :cond_8
    return v5
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onMeasure(II)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateScrollStatus(Z)V

    :cond_0
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iput v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    :cond_0
    return-void
.end method

.method realTimeReorder()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    const-string/jumbo v2, "realTimeReorder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findFirstEmptySpace()I

    move-result v1

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTargetCell:I

    if-ge v1, v5, :cond_4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTargetCell:I

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findFirstEmptySpace()I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    if-lt v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    :cond_6
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderImmediately:Z

    return-void
.end method

.method public realTimeReorder(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder(I)V

    return-void
.end method

.method public refreshAllRunningTaskList()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    const-string/jumbo v1, "refreshAllRunningTaskList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->resetRunningAppItems()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public removeAeroWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AERO] removeAeroWindow mAeroWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeView(Landroid/view/View;)Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    :cond_1
    return-void
.end method

.method public removeAppShortcutByBixby(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeShortcutByBixby(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeEmptySpace()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v1

    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->closeLayoutGap()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_0
.end method

.method public removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    :cond_0
    const-string/jumbo v1, "com.samsung.android.incallui"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return v0
.end method

.method public removeRunningTaskApp(I)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunningTaskApp()::Stop  Not in the list!!  taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v2

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeRunningTaskAppForPkgRemoved():: pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setupTaskBar(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Z)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f050029

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowHotseatTitle:Z

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setMultiWindowManager(Lcom/samsung/android/multiwindow/MultiWindowManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setItemViewBuilder(Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;)V

    return-void

    :cond_1
    const v0, 0x7f05002a

    goto :goto_0
.end method

.method public updateBadgeCount(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->refreshBadge()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateInCallUI(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInCallUI() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$10;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateRunningTaskApp(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", taskDesc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateRunningItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;ILandroid/app/ActivityManager$TaskDescription;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRunningTaskApp()::Update  Not in the list!! taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    return-void
.end method
