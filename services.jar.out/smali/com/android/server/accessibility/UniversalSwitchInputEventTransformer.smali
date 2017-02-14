.class public Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;
.super Ljava/lang/Object;
.source "UniversalSwitchInputEventTransformer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# static fields
.field private static final DEBUG:Z = true

.field public static final SCREEN_AS_SWITCH:Ljava/lang/String; = "accessibility_universal_switch_screen_as_switch"

.field private static final TAG:Ljava/lang/String; = "SwitchControlScreenAsSwitch"


# instance fields
.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mTapTimeout:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_DOWN"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    const-string/jumbo v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_UP"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mTapTimeout:I

    return-void
.end method

.method private checkUniversalSwitchState()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_switch_enabled"

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v8, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "SwitchControlScreenAsSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in fliter checkUniversalSwitchState universalSwitchEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.samsung.android.universalswitch"

    iget-object v3, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enabled_accessibility_services"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SwitchControlScreenAsSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in fliter checkUniversalSwitchState enabledServicesSetting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    return v6

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v6

    :cond_3
    const-string/jumbo v3, "com.samsung.android.universalswitch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v8

    :cond_4
    return v6
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SwitchControlScreenAsSwitch"

    const-string/jumbo v1, "sendMotionEvent - passing event to application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, v2, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->checkUniversalSwitchState()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_universal_switch_screen_as_switch"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "SwitchControlScreenAsSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In universal Switch input filter universalSwitchState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " screenAsSwitchEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "SwitchControlScreenAsSwitch"

    const-string/jumbo v5, "screen as switch is enabled hence blocking touch events here"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string/jumbo v4, "SwitchControlScreenAsSwitch"

    const-string/jumbo v5, "receiving motion event"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendBroadCast(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->clear()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendBroadCast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendBroadCast(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
