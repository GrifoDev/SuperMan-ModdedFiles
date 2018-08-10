.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$1;,
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$SelectionController;,
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final TEMP_POSITION:[F

.field private static final TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final TW_MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final TW_MENU_ITEM_ORDER_DICTIONARY:I = 0x4

.field private static final TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x1

.field private static final TW_MENU_ITEM_ORDER_SHARE:I = 0x3

.field private static final TW_MENU_ITEM_ORDER_TRANSLATE:I = 0x5

.field private static sInstance:Landroid/widget/MultiSelectPopupWindow;

.field private static sTextActionMode:Landroid/view/ActionMode;

.field private static sTextView:Landroid/widget/TextView;


# instance fields
.field private mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()[F
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-object v0
.end method

.method static synthetic -get4()Landroid/view/ActionMode;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get5()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    sput-object p0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/MultiSelectPopupWindow;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    sput-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    sput-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public static getInstance()Landroid/widget/MultiSelectPopupWindow;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private hideFloatingToolbar()V
    .locals 4

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method private isDictionaryEnable()Z
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4
.end method

.method private isEmergencyMode()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const-string/jumbo v2, "MultiSelectPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEmergencyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isUPSMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return v4
.end method

.method private isSelectAllEnable()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "MultiSelectPopupWindow"

    const-string/jumbo v3, "getTextFormultiSelection() text is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isShareViaEnable()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTranslatorEnable()Z
    .locals 8

    const/4 v7, 0x0

    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.translator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.google.android.apps.translate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    const/4 v5, 0x1

    return v5

    :cond_2
    return v7
.end method

.method private showFloatingToolbar()V
    .locals 6

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->hideFloatingToolbar()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->showFloatingToolbar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeCurrentSelectedView(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    return-void
.end method

.method getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-direct {v1, p0, v2}, Landroid/widget/MultiSelectPopupWindow$SelectionController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-object v1
.end method

.method public hideMultiSelectPopupWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method public initSelectionControllerPosition()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initPreviousOffset()V

    :cond_0
    return-void
.end method

.method onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public showMultiSelectPopupWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->show()V

    :cond_0
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;

    invoke-direct {v0, p0, v2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;-><init>(Landroid/widget/MultiSelectPopupWindow;Z)V

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    sput-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-void
.end method
