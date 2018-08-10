.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;


# direct methods
.method private static synthetic -getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->values()[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to convert item into view for Hotseat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->createShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewAdded :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShowHotseatTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AllappsIcon;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextVisible(Z)V

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo v0, "com.samsung.android.incallui"

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateInCallUI(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    return-void
.end method
