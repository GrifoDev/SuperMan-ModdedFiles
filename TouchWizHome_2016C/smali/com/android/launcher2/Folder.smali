.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderIconAnim;,
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderAnimationInfo;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;,
        Lcom/android/launcher2/Folder$FolderColor;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final FOLDER_CLOSE_START_DELAY:J = 0xc8L

.field private static final ICON_PRESS_ALPHA_VALUE:F = 0.5f

.field private static final INVALID_SOFTINPUT_PARAMS:I = -0x1

.field public static ON_EXIT_CLOSE_DELAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static final mAdditionalScaleFactor:F = 0.05f

.field private static sHintText:Ljava/lang/String;


# instance fields
.field dragExit:Z

.field folderLocation:[I

.field iconLocation:[I

.field private isChangingRotation:Z

.field private mAddItemPlusButton:Landroid/view/View;

.field private mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field private mAllowMoveAfterDrop:Z

.field protected mAlphaAnimDuration:I

.field protected mAlphaDuration:I

.field private mBackupSoftInputParams:I

.field private mBottomBlankView:Landroid/view/View;

.field protected mCloseDuration:I

.field protected mContent:Lcom/android/launcher2/FolderContent;

.field protected mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field private mCurrentOrientation:I

.field mDragState:Lcom/android/launcher2/DragState;

.field protected mExpandDuration:I

.field private mFocusedView:Landroid/view/View;

.field protected mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderBottomTextLine:Landroid/widget/ImageView;

.field private mFolderColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderColorViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderContainerDragStartTime:J

.field private mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

.field private mFolderIconView:Lcom/android/launcher2/FolderIconView;

.field private mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field protected mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderOptionButton:Landroid/widget/ImageView;

.field private mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

.field protected mFolderOptionView:Landroid/widget/LinearLayout;

.field private mGridSizeChangedForDrag:Z

.field private mHeight:I

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsClosing:Z

.field private mIsEditingName:Z

.field private mIsFolderOpenAnimationEnded:Z

.field private mIsHidingSearchAppList:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListenerProxy:Landroid/view/View$OnClickListener;

.field final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mLeftOutsideArea:Landroid/graphics/Rect;

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field protected mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field private mNewItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field mOnColorViewClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field private mOnceExited:Z

.field private mOriginalOrientation:I

.field private mOtherParent:Landroid/view/ViewGroup;

.field private mPrevOrientation:I

.field private mRightOutsideArea:Landroid/graphics/Rect;

.field private mScrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut60:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field protected mUninstallAnimDuration:I

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

.field private mWidth:I

.field private savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

.field private selectedColor:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    const/16 v0, 0x96

    sput v0, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mOnceExited:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    new-instance v2, Lcom/android/launcher2/Alarm;

    invoke-direct {v2}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mGridSizeChangedForDrag:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;

    iput v4, p0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    iput v4, p0, Lcom/android/launcher2/Folder;->mPrevOrientation:I

    iput v4, p0, Lcom/android/launcher2/Folder;->mOriginalOrientation:I

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/Folder;->mBackupSoftInputParams:I

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, v6, v5, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mSineInOut70:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v6, v5, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mSineInOut60:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v6, v5, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mSineInOut33:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher2/Folder;->mFolderContainerDragStartTime:J

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mIsClosing:Z

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mAllowMoveAfterDrop:Z

    new-instance v2, Lcom/android/launcher2/Folder$FolderVertScroller;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$1;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    new-instance v2, Lcom/android/launcher2/Folder$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/android/launcher2/Folder$12;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$12;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mItemClickListenerProxy:Landroid/view/View$OnClickListener;

    new-array v2, v8, [I

    iput-object v2, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    new-array v2, v8, [I

    iput-object v2, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    new-instance v2, Lcom/android/launcher2/Folder$22;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$22;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    new-instance v2, Lcom/android/launcher2/Folder$23;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$23;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->dragExit:Z

    new-instance v2, Lcom/android/launcher2/Folder$27;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$27;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mScrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Folder;->mCloseDuration:I

    const v2, 0x7f0c006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Folder;->mAlphaAnimDuration:I

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Folder;->mAlphaDuration:I

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Folder;->mUninstallAnimDuration:I

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getOpenFolderType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getFirstCloseFolderIconColor()I

    move-result v2

    const v3, 0x1ffffff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getTitleColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/FolderItemMovePanel;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/FolderItemMovePanel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/launcher2/FolderItemMovePanel;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Folder;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderItemMovePanel;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f0e000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f0e000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f0e000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f0e000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    sget-object v3, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f0e000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/Folder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/searchapp/SearchAppListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/Folder;Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Folder;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->popBackStackFragment()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher2/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/launcher2/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderIconAnim;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onOffColorPicker()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListenerProxy:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Folder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Folder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Folder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSineInOut70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$FolderAnimationInfo;)Lcom/android/launcher2/Folder$FolderAnimationInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/Folder;->mFolderContainerDragStartTime:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Folder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mOriginalOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/Folder;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/Folder;->mFolderContainerDragStartTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/launcher2/Folder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/Folder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mPrevOrientation:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/launcher2/Folder;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/Folder;->mPrevOrientation:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSineInOut60:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Folder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Folder;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/Folder;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateOpen()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Folder$20;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$20;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderIconAnim;->open()V

    :cond_1
    return-void
.end method

.method private changeOpenFolderGradationColor(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getBitmapForOpenFolderGradationColor(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v10, v9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    const/16 v9, 0x8

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#ff"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x3

    new-array v6, v8, [I

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v8, 0x1

    aput v1, v6, v8

    const/4 v8, 0x2

    aput v2, v6, v8

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getBitmapForOpenFolderGradationColor(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v3

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidthForColumns(I)I

    move-result v4

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;
    .locals 25

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_7

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v20, 0x0

    aget v20, v17, v20

    if-nez v20, :cond_0

    const/16 v20, 0x1

    aget v20, v17, v20

    if-eqz v20, :cond_1

    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->iconLocation:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-gtz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutMenu;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppFolderItem;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    iget v3, v11, Lcom/android/launcher2/AppFolderItem;->mCell:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v5

    rem-int v18, v3, v5

    div-int v19, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher2/CellLayoutMenu;

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher2/CellLayoutMenu;->cellToPoint(II[I)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutMenu;->getDesiredWidth()I

    move-result v20

    sub-int v20, v21, v20

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v12, v22

    add-int v22, v22, v8

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v12, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    add-int v22, v22, v23

    aput v22, v20, v21

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_3

    const-string v20, "Launcher.Folder"

    const-string v21, "getParent() is null in getFolderAnimationInfo"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v22, v20, v21

    iget v0, v13, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    move/from16 v23, v0

    add-int v22, v22, v23

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v22, v20, v21

    iget v0, v13, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    move/from16 v23, v0

    add-int v22, v22, v23

    aput v22, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher2/MenuView;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v14, v22

    aput v22, v20, v21

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v20

    if-eqz v20, :cond_e

    instance-of v0, v11, Lcom/android/launcher2/HomeItem;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    invoke-static {v11}, Lcom/android/launcher2/BaseItem;->isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHotseatGridSize()Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/LauncherApplication$HotseatGridSize;->FULL:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    const v20, 0x7f0a0237

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_5
    :goto_0
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppsGrid;->getZoomOutScaleFactor()F

    move-result v16

    :cond_6
    :goto_1
    new-instance v7, Lcom/android/launcher2/Folder$FolderAnimationInfo;

    invoke-direct {v7}, Lcom/android/launcher2/Folder$FolderAnimationInfo;-><init>()V

    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v20, v20, v16

    move/from16 v0, v20

    float-to-int v4, v0

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getTargetIconSize()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    move/from16 v0, v20

    float-to-int v9, v0

    iget-object v0, v7, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    sub-int v23, v4, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    iget-object v0, v7, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->iconLocation:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->folderLocation:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    iget-object v0, v7, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v9

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v20, v21

    iget-object v0, v7, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    int-to-float v0, v9

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v20, v21

    :cond_7
    return-object v7

    :cond_8
    const v20, 0x7f0a012d

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    const v20, 0x7f0a0233

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    const v20, 0x7f0a0237

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    const v20, 0x7f0a00f1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    instance-of v0, v11, Lcom/android/launcher2/AppItem;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    const v20, 0x7f0a01ca

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    const v20, 0x7f0a0141

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_e
    instance-of v0, v11, Lcom/android/launcher2/HomeItem;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const v20, 0x7f0a00f1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_f
    instance-of v0, v11, Lcom/android/launcher2/AppItem;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const v20, 0x7f0a0141

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Folder;->dragExit:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getPageZoom()F

    move-result v16

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Folder;->dragExit:Z

    goto/16 :goto_1
.end method

.method private getGridValues(Landroid/content/res/Resources;)V
    .locals 10

    const v9, 0x7f0c0018

    const v8, 0x7f0c0017

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Utilities;->getRotationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    :goto_0
    return-void

    :cond_0
    const-string v6, "Launcher.Folder"

    const-string v7, "getGridValues() : rotationContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    goto :goto_0
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    :goto_2
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isOutsideArea(FF)Z
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getX()F

    move-result v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getY()F

    move-result v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLeftOutsideArea:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mRightOutsideArea:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyFolderNameChangeListeners(Lcom/android/launcher2/FolderItem;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Lcom/android/launcher2/FolderItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    if-eqz v3, :cond_4

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->removeViews(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher2/IconMoveContainer;->setFolderCloseComplete(Z)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v4, "Launcher.Folder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCloseComplete parent remove view error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v4, "Launcher.Folder"

    const-string v5, "onCloseComplete parent is null, nothing to remove."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onOffColorPicker()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->appear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismiss(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismiss(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->appear(Landroid/view/View;)V

    goto :goto_0
.end method

.method private openFolderWithoutAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->open()V

    return-void
.end method

.method private popBackStackFragment()Z
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    const-string v4, "Launcher.Folder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backStack removed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareForOpenAnimate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setTranslationX(F)V

    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setTranslationY(F)V

    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v4

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/launcher2/Folder$FolderIconAnim;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/Folder$FolderIconAnim;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$1;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder$FolderIconAnim;->openPrepare(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V

    :cond_0
    return-void
.end method

.method private setAddBtnColorType()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "need_dark_font"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    const v7, 0x7f0c0061

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v4, v7

    const v7, 0x7f0c0060

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v2, v7

    const v7, 0x7f0e002e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v0, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v2, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v0, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setColorType()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "need_dark_font"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    const v7, 0x7f0c0061

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v4, v7

    const v7, 0x7f0c0060

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v2, v7

    const v7, 0x7f0e002e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v0, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4, v10, v2, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderEditText;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v4, v10, v2, v6}, Lcom/android/launcher2/FolderEditText;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v0, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setEditTextBg()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :try_start_0
    const-string v6, "show_button_background"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    const v7, 0x7f02001b

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFolderColor(IZ)V
    .locals 2

    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0
.end method

.method private setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 28

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->setFolderColorTalkback()V

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    aget-object v10, v24, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020036

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e002b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v23

    sget-object v24, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getTitleColor(I)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderGradation()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    if-lez v23, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/Folder;->changeOpenFolderGradationColor(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    const-string v23, "Launcher.Folder"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setFolderColor() "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " [folderId: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsDefaultTheme()Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v16, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v23, v0

    const/16 v24, 0x80

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v25

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v26

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/FolderEditText;->setHintTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "need_dark_font"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v23, v0

    const/16 v24, 0x80

    const/high16 v25, -0x1000000

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->red(I)I

    move-result v25

    const/high16 v26, -0x1000000

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->green(I)I

    move-result v26

    const/high16 v27, -0x1000000

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/FolderEditText;->setHintTextColor(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "homescreen_folder_color"

    const-string v25, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/android/launcher2/Utilities;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v23

    sget-object v24, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    if-eqz p2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v24

    invoke-interface/range {v23 .. v24}, Lcom/android/launcher2/FolderItem;->setFolderColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->setColorType()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v23

    if-eqz v23, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v23

    if-eqz v23, :cond_b

    sget-object v23, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f090050

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v23, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v23, 0x7f0a0195

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v23, 0x7f0a03ab

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    sub-int v19, v12, v23

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v23, 0x0

    move/from16 v24, v23

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    aget-object v10, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v23

    sget-object v27, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderColor:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/theme/ThemeUtils;->roundBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v21, 0x0

    const v23, 0x7f020027

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_e

    move-object/from16 v0, v20

    invoke-static {v0, v12, v12}, Lcom/android/launcher2/Utilities;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/android/launcher2/theme/ThemeUtils;->strokeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    :cond_d
    if-eqz v21, :cond_e

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    goto :goto_3

    :cond_f
    sget-object v23, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    sget-object v23, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    sget-object v23, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090051

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->selectedColor:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private setFolderColorTalkback()V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f09004a

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setScrollViewSize()V
    .locals 0

    return-void
.end method

.method private setScrollViewSizeWithSize(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderContent;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 4

    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder visible cols = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    :cond_1
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private updateScrollViewSize()V
    .locals 6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    div-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/lit8 v2, v3, 0x1

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v1

    if-eq v2, v1, :cond_0

    iget v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    if-le v2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/android/launcher2/Folder$24;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Folder$24;-><init>(Lcom/android/launcher2/Folder;)V

    const-wide/16 v4, 0x14a

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateTextViewFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowMoveAfterDrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mAllowMoveAfterDrop:Z

    return v0
.end method

.method public appear(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->clearFocus()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->colorviewAppear(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public bind(Lcom/android/launcher2/FolderItem;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->normalize()V

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v11, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v8, p1, v11}, Lcom/android/launcher2/FolderContent;->addItems(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/ItemViewBuilder;)I

    move-result v1

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v8, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    iget v11, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v6, v8, v11}, Lcom/android/launcher2/FolderPagedView;->initCellLayoutVisibleRange(II)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v2

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderContent;->getPageCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/FolderContent;->getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-nez v2, :cond_2

    move v8, v9

    :goto_1
    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v8, v10

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v8, v11, :cond_8

    const/4 v7, 0x0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->updateVisibleRange()V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v8, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    iget-boolean v8, p0, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v11}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v8

    invoke-direct {p0, v8, v10}, Lcom/android/launcher2/Folder;->setFolderColor(IZ)V

    return-void

    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->removeAddItemPlusButton()V

    goto :goto_3
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method public centerAboutIcon()V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v23, "Launcher.Folder"

    const-string v24, "centerAboutIcon() : content view is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v12, v0, v11}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/AnimationLayer;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v5}, Lcom/android/launcher2/AnimationLayer;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Lcom/android/launcher2/AnimationLayer;->getMeasuredHeight()I

    move-result v23

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Point;->y:I

    :goto_1
    const v23, 0x7f0a0212

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const v23, 0x7f0a03aa

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/launcher2/Folder;->setPadding(IIII)V

    sub-int v23, v19, v22

    div-int/lit8 v13, v23, 0x2

    const v23, 0x7f0a0192

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const v24, 0x7f0a01f9

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    add-int v15, v23, v24

    move/from16 v20, v15

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v10, v23, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mBottomBlankView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0a01fa

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0a01eb

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setMinimumHeight(I)V

    move/from16 v0, v19

    iput v0, v14, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    iput v10, v14, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    move/from16 v0, v20

    iput v0, v14, Lcom/android/launcher2/HomeView$LayoutParams;->topMargin:I

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v14, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    move/from16 v0, v20

    iput v0, v14, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/Folder;->mHeight:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mWidth:I

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    const v23, 0x7f110102

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    const/16 v23, 0x0

    const v24, 0x7f0a02b0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_6

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v26, v20, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->mLeftOutsideArea:Landroid/graphics/Rect;

    new-instance v23, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v19, v24

    add-int v25, v20, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->mRightOutsideArea:Landroid/graphics/Rect;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getPaddingStart()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->setScrollZoneLeftRight(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    goto/16 :goto_1

    :cond_6
    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    add-int v25, v20, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->mLeftOutsideArea:Landroid/graphics/Rect;

    new-instance v23, Landroid/graphics/Rect;

    sub-int v24, v19, v13

    add-int v25, v20, v10

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Folder;->mRightOutsideArea:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method public clearDragOutline()V
    .locals 0

    return-void
.end method

.method public close(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Folder;->close(ZZZ)V

    return-void
.end method

.method public close(ZZZ)V
    .locals 20

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Folder;->mIsClosing:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Folder;->mCloseDuration:I

    invoke-virtual {v14, v15}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher2/Launcher;

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/launcher2/Folder;->hideSearchAppList(ZZ)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Folder;->setScrollChangeListener(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/launcher2/FolderEditText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher2/AppFolderItem;

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v14}, Lcom/android/launcher2/AppFolderItem;->isAppFolderDestroyed()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppIconView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Folder;->mBackupSoftInputParams:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Folder;->mBackupSoftInputParams:I

    invoke-virtual {v14, v15}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v14}, Lcom/android/launcher2/FolderItemMovePanel;->hideFolderPanel()V

    :cond_8
    if-nez p2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    move/from16 v0, p3

    invoke-interface {v14, v0}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    instance-of v14, v4, Lcom/android/launcher2/FolderIconView;

    if-eqz v14, :cond_9

    check-cast v4, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v14}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder$FolderIconAnim;->closeWithoutAnim()V

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    :cond_b
    if-eqz v3, :cond_d

    iget-object v14, v3, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v11, v14

    iget-object v14, v3, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    iget-object v14, v14, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v14, v14

    cmpl-float v14, v14, v11

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    iget-object v14, v14, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    iget-object v14, v14, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->savedFolderAnimInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    iget-object v14, v14, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v12, v14

    :cond_c
    const/4 v14, 0x2

    sget-object v15, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Folder;->mCloseDuration:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Folder;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    iget-object v15, v3, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    const v16, 0x3d4ccccd    # 0.05f

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    iget-object v15, v3, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    const v16, 0x3d4ccccd    # 0.05f

    sub-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Folder;->mCloseDuration:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Folder;->mSineInOut60:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v15, Lcom/android/launcher2/Folder$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/launcher2/Folder$21;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;

    invoke-virtual {v14, v3}, Lcom/android/launcher2/Folder$FolderIconAnim;->close(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V

    :cond_d
    const-wide/16 v8, 0x64

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x64

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v14}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher2/AppFolderItem;

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v14

    if-nez v14, :cond_f

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setCrosshairsVisibility(F)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose(Z)V

    goto/16 :goto_0
.end method

.method public colorviewAppear(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public colorviewDismiss(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public completeDragExit()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->dragExit:Z

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public disableChildBadges()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppIconView;->hideBadge()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dismiss(Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/android/launcher2/Folder;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->colorviewDismiss(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    new-instance v2, Lcom/android/launcher2/Folder$26;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$26;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v7, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/DragState;

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragState;

    move-object v1, v5

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v10, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f090087

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_0
    :goto_1
    return v3

    :cond_1
    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v3}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mGridSizeChangedForDrag:Z

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-gt v5, v6, :cond_3

    iget-object v5, v0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    div-int v4, v5, v6

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    iget v6, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mGridSizeChangedForDrag:Z

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher2/Folder;->mGridSizeChangedForDrag:Z

    if-eqz v5, :cond_7

    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mGridSizeChangedForDrag:Z

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateScrollViewSize()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_3

    move v3, v6

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v10, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v3}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setAddingItemWithDrag(Z)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    goto/16 :goto_1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderContent;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderGradation()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    sub-int v4, v6, v7

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v2

    const/16 v0, 0xff

    if-ge v4, v2, :cond_0

    mul-int/lit16 v6, v4, 0xff

    div-int v0, v6, v2

    :cond_0
    const/16 v6, 0xff

    if-gt v0, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a03a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    add-int/lit8 v7, v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public doneEditingFolderName(Z)V
    .locals 14

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v11, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderEditText;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/android/launcher2/Folder;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "Launcher.Folder"

    const-string v11, "FolderName was trimmed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v10}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FolderLock;->applyFolderNameChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v10, v10, Lcom/android/launcher2/HomeItem;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v10, Lcom/android/launcher2/HomeItem;

    iget-wide v10, v10, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090047

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_5
    move-object v8, v1

    :cond_6
    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot()V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return-void

    :cond_8
    const-string v10, ""

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_9
    const-string v9, ""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_a
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public enableChildBadges()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderContent;->getPageCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/FolderContent;->getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemCount(Lcom/android/launcher2/CellLayoutNoGap;)I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Folder;->getItemAt(Lcom/android/launcher2/CellLayoutNoGap;I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_3

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v5, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getAddButtonVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentView()Lcom/android/launcher2/CellLayoutNoGap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewOfLastPage()Lcom/android/launcher2/CellLayoutNoGap;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderContent;->getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsClosing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x60000

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 6

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_1
.end method

.method public getFolderContent()Lcom/android/launcher2/FolderContent;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    return-object v0
.end method

.method public getFolderIconView()Lcom/android/launcher2/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public getFolderManager()Lcom/android/launcher2/Folder$FolderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    return-object v0
.end method

.method public getIconId()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v3, Lcom/android/launcher2/BaseItem;->mId:J

    :cond_0
    return-wide v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(Lcom/android/launcher2/CellLayoutNoGap;I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount(Lcom/android/launcher2/CellLayoutNoGap;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemTotalCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher2/ChildIterable;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocation([I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, p1, v11

    if-gtz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/AppFolderItem;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    instance-of v9, v9, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    const/4 v9, 0x2

    new-array v6, v9, [I

    iget v0, v5, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v1

    rem-int v7, v0, v1

    div-int v8, v0, v1

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/launcher2/CellLayoutMenu;->cellToPoint(II[I)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getDesiredWidth()I

    move-result v9

    sub-int v9, v10, v9

    div-int/lit8 v3, v9, 0x2

    aget v9, v6, v11

    add-int/2addr v9, v3

    aput v9, p1, v11

    aget v9, v6, v12

    aget v10, p1, v12

    add-int/2addr v9, v10

    aput v9, p1, v12

    :cond_0
    return-void
.end method

.method public getMaxFolderVisibleRows()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    return v0
.end method

.method public getmMenu()Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method public getmSearchAppListFragment()Lcom/android/launcher2/searchapp/SearchAppListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    return-object v0
.end method

.method public hideSearchAppList(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Folder;->hideSearchAppList(ZZ)V

    return-void
.end method

.method public hideSearchAppList(ZZ)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "Launcher.Folder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hideSearchAppList "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getVisibility()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    if-eqz v7, :cond_3

    if-eqz p1, :cond_6

    iget-boolean v7, p0, Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/launcher2/Folder$17;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$17;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v7, v11, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->clearAccessibiiltyFocus()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getExitAnimation()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06001e

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v7}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/launcher2/Folder$18;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$18;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v7, Lcom/android/launcher2/Folder$19;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$19;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v11, p0, Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z

    :cond_3
    :goto_0
    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v4, v7}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->popBackStackFragment()Z

    iput-object v12, p0, Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;

    iput-object v12, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iput-boolean v10, p0, Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z

    goto :goto_0
.end method

.method public isAppsEditMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditingName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFolderOpenAnimationEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return v0
.end method

.method public isOnceExited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mOnceExited:Z

    return v0
.end method

.method public isSearchAppListShown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDataSetChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeAllViews()V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateScrollViewSize()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onAttachedToWindow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 31

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v19

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    if-eqz v9, :cond_1

    const v27, 0x7f0a018e

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    const v28, 0x7f0a018d

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setCellSize(II)V

    const v27, 0x7f0a018b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    const v28, 0x7f0a018c

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setGaps(II)V

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    :cond_1
    const v27, 0x7f110102

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    const v27, 0x7f0a0203

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a01a7

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v27

    if-eqz v27, :cond_2

    const v27, 0x7f0a0204

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a0211

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v27, 0x7f0a020f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/FolderEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a019f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v27, 0x7f0a0205

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v27, 0x7f11003d

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a01cc

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a0199

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v27, 0x7f11003e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v27, 0x7f0a01ef

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v27, 0x7f0a01f2

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v9, :cond_5

    const v27, 0x7f0a018f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v27, 0x7f0a0190

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v25

    move/from16 v3, v28

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->setPadding(IIII)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderGradation()Z

    move-result v27

    if-nez v27, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v12

    const v27, 0x7f0f000d

    move/from16 v0, v27

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v7

    const v27, 0x7f0f000d

    move/from16 v0, v27

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v8

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    const/16 v17, 0x0

    :goto_0
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v0, v10, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v18, v10

    check-cast v18, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v7}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_7
    check-cast v10, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10, v8, v7}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_8
    invoke-static {v8, v7}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    move/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    const v27, 0x7f110035

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_a

    if-eqz v9, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    const/16 v27, 0x0

    const v28, 0x7f0a0224

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v27

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterFolderItemViews(Ljava/lang/Iterable;)V

    :cond_b
    :goto_4
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mPrevOrientation:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mCurrentOrientation:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    const/16 v27, 0x0

    const v28, 0x7f0a0224

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Folder;->isChangingRotation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onDetachedFromWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/DragState;

    move-object v2, v10

    :goto_1
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v10, v11, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v7

    const v10, 0x7f110102

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v10, 0x7f11003f

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :pswitch_0
    if-eqz v7, :cond_4

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher2/FolderPagedView;->animatePageBackgroundForCurrentPage(II)V

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v10}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    iget-wide v12, v11, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    if-eqz v5, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/IconMoveContainer;->setFolderCloseComplete(Z)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderItemMovePanel;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2

    :cond_5
    if-eqz v5, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/IconMoveContainer;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_2

    :cond_6
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    sget v11, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v10}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto/16 :goto_2

    :pswitch_2
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v10}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/launcher2/Folder;->isOutsideArea(FF)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mLeftOutsideArea:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_7

    invoke-virtual {v7}, Lcom/android/launcher2/FolderPagedView;->requestToScrollToLeft()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mRightOutsideArea:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/FolderPagedView;->requestToScrollToRight()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher2/FolderPagedView;->animatePageBackgroundForCurrentPage(II)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v10}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v10}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher2/FolderPagedView;->animatePageBackgroundForCurrentPage(II)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    sget-wide v12, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderItemMovePanel;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderItemMovePanel;->hideFolderPanel()V

    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v10}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v10, v10, Lcom/android/launcher2/AppFolderItem;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v10, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v10}, Lcom/android/launcher2/AppFolderItem;->isAppFolderDestroyed()Z

    move-result v4

    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_d

    instance-of v10, v8, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v10, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    :cond_d
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    if-eqz v8, :cond_e

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    if-eq v8, v10, :cond_12

    :cond_e
    iget-object v10, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne v10, v1, :cond_12

    if-nez v4, :cond_12

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    if-nez v5, :cond_f

    if-eqz v6, :cond_11

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10, v6}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_f
    :goto_3
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v10}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FolderIconView;

    const-wide/32 v12, -0x80000000

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    if-nez v4, :cond_10

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v10}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    :cond_10
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->updateVisibleRange()V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    goto :goto_3

    :cond_12
    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v10}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v4, Lcom/android/launcher2/FolderContentHorizontal;

    invoke-direct {v4}, Lcom/android/launcher2/FolderContentHorizontal;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/android/launcher2/FolderContent;->inflateContentView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    const v4, 0x7f110104

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/FolderEditText;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const v4, 0x7f110108

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderBottomTextLine:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderBottomGradation:Landroid/graphics/drawable/GradientDrawable;

    const v4, 0x7f110105

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    const v4, 0x7f110106

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    const v4, 0x7f110107

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f110102

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/Folder$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/android/launcher2/Folder$3;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/launcher2/Folder$4;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/launcher2/Folder$5;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v6, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_1:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f110037

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v6, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_2:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f110038

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v6, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_3:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f110039

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v6, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_4:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f11003a

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v6, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_COLOR_5:Lcom/android/launcher2/Folder$FolderColor;

    const v4, 0x7f11003b

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v5, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v5, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v5, Lcom/android/launcher2/Folder$6;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v5, Lcom/android/launcher2/Folder$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v5

    or-int/lit16 v5, v5, 0x4000

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x1e

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v5, Lcom/android/launcher2/Folder$8;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f11003e

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v4, 0x7f110045

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mBottomBlankView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mBottomBlankView:Landroid/view/View;

    new-instance v5, Lcom/android/launcher2/Folder$9;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$9;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mBottomBlankView:Landroid/view/View;

    new-instance v5, Lcom/android/launcher2/Folder$10;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$10;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->setScrollChangeListener(Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setCrosshairsVisibility(F)V

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Folder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_7

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/FolderEditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v5, 0x1

    :cond_1
    :goto_1
    move v8, v5

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v9, v8}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_5
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->playSoundEffect(I)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onOffColorPicker()V

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v11, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto/16 :goto_1
.end method

.method public onItemsChanged()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v0

    if-gt v0, v3, :cond_0

    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder is empty. close current folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderItemMovePanel;->showFolderPanel()V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    instance-of v2, v2, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->setCloseFolderWithAppsExit()V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v2

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->findFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->sendAccessibilityEvent(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getPageCount()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/FolderContent;->getContentViewByPage(I)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v4

    if-gt v4, v5, :cond_2

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->isInReorder()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/FolderPagedView;->syncItemViewOnRemoveItem()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewsToTheirItemPositions()V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateScrollViewSize()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFocusedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setQueryString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/Folder$11;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Folder$11;-><init>(Lcom/android/launcher2/Folder;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/launcher2/Folder;->mOriginalOrientation:I

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppsGrid;->setIsFolderOpenWithEdit(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderItemMove()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderItemMovePanel:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateCustomViewToCellLayout()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayoutNoGap;->setCrosshairsVisibility(F)V

    :cond_5
    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/MenuAppsGrid;->setIsFolderOpenWithEdit(Z)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_1
.end method

.method public parentLayoutEntered()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    sget v1, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    :cond_0
    return-void
.end method

.method public removeAddItemPlusButton()V
    .locals 4

    const v1, 0x7f11003f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Folder;->mUninstallAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Folder$15;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Folder$15;-><init>(Lcom/android/launcher2/Folder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public repositionOpenFolder(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/launcher2/Folder$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/Folder$25;-><init>(Lcom/android/launcher2/Folder;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->updateTempIconPosition()V

    return-void
.end method

.method public requestChildFocusForHWKey()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, v3, v3}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scrollDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    return-void
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setAllowMoveAfterDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mAllowMoveAfterDrop:Z

    return-void
.end method

.method public setEditTextBg(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    const v4, 0x7f020018

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    new-instance v1, Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public setFolderNameDefaultFontSize(Z)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x7f0a01a2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Lcom/android/launcher2/FolderEditText;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const v6, 0x7f0a0204

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f0a0208

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x7f0a020e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x7f0a020b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x7f0a020c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float v2, v6, v7

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    if-eqz p1, :cond_0

    cmpl-float v6, v5, v2

    if-lez v6, :cond_0

    const v6, 0x7f0a01a3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Lcom/android/launcher2/FolderEditText;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setForViewType(Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->setHomeView(Lcom/android/launcher2/HomeView;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1f4

    sput v1, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x96

    sput v1, Lcom/android/launcher2/Folder;->ON_EXIT_CLOSE_DELAY:I

    goto :goto_0
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnceExited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mOnceExited:Z

    return-void
.end method

.method public setScrollChangeListener(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mScrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mScrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method public showAddFolderItem()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->showAddFolderItem(Ljava/lang/Boolean;)V

    return-void
.end method

.method public showAddFolderItem(Ljava/lang/Boolean;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const v1, 0x7f11003f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButtonAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Folder;->mUninstallAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Folder$13;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$13;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mAddItemPlusButton:Landroid/view/View;

    new-instance v2, Lcom/android/launcher2/Folder$14;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$14;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setAddBtnColorType()V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setEditTextBg()V

    return-void
.end method

.method public showSearchAppList()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherModel;->loadAllAppsWithoutBinding(Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public showSearchAppListAfterLoadAllApps()V
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mIsClosing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Launcher.Folder"

    const-string v2, "igonre show SearchAppListFragment because of invalid folder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mIsHidingSearchAppList:Z

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->newInstance(Lcom/android/launcher2/FolderItem;Z)Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    new-instance v2, Lcom/android/launcher2/Folder$16;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Folder$16;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setOperationListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f11008a

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mSearchAppListFragment:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "FAAH"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "FAAA"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public startEditingFolderName()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder;->mBackupSoftInputParams:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/android/launcher2/Folder;->mBackupSoftInputParams:I

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public startEditingFolderName(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    return-void
.end method

.method public updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIconView:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    :cond_0
    return-void
.end method

.method public updateVisibleRange()V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderContent;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->updateVisibleRange(II)V

    :cond_1
    return-void
.end method
