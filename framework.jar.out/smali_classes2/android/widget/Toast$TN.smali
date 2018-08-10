.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x1b58L

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final SHOW:I


# instance fields
.field mCheckReuse:Z

.field mDefaultGravity:I

.field mDefaultOffsetY:I

.field mDisableHWAcceleration:Z

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x40088

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Toast$TN;->mCheckReuse:Z

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0, p2, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CANCEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleHide()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HANDLE HIDE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    iput-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 17

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v10

    :cond_0
    sget-boolean v13, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v13, :cond_1

    const-string/jumbo v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HANDLE SHOW: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mView="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mNextView="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v13, v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast$TN;->handleHide()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :cond_4
    const-string/jumbo v13, "window"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    invoke-static {v13, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v13, v6, 0x7

    const/4 v14, 0x7

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_5
    and-int/lit8 v13, v6, 0x70

    const/16 v14, 0x70

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_6
    if-nez v8, :cond_7

    if-lez v10, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mY:I

    if-ne v13, v14, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultGravity:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mGravity:I

    if-ne v13, v14, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Toast$TN;->mY:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Toast$TN;->mCheckReuse:Z

    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mX:I

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mY:I

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v9, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mDuration:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const-wide/16 v14, 0x1b58

    :goto_1
    iput-wide v14, v13, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eqz v13, :cond_9

    sget-boolean v13, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v13, :cond_8

    const-string/jumbo v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "REMOVE! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v13, v14}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Toast$TN;->mDisableHWAcceleration:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/view/View;->semAddExtentionFlags(I)V

    :cond_a
    sget-boolean v13, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v13, :cond_b

    const-string/jumbo v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ADD! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v13, v14, v15}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v14, 0x102000b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/TextView;

    if-eqz v13, :cond_c

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_c

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v13, v5, 0x1

    int-to-char v5, v13

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_10

    const-string/jumbo v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Text: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    return-void

    :cond_d
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Toast$TN;->mCheckReuse:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mY:I

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultGravity:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Toast$TN;->mGravity:I

    if-ne v13, v14, :cond_7

    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Toast$TN;->mDefaultOffsetY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Toast$TN;->mY:I

    goto/16 :goto_0

    :cond_f
    const-wide/16 v14, 0xfa0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v13, v14}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v13, "Toast"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Text: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v11, v0, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public hide()V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HIDE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setShowForAllUsers()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Toast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SHOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
