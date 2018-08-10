.class final Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->-set0(Lcom/android/systemui/stackdivider/DividerPanel;I)I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    const-string/jumbo v2, "db_apppair_tooltip_shown"

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/DividerPanel;->-wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-set1(Lcom/android/systemui/stackdivider/DividerPanel;I)I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    const-string/jumbo v2, "db_divider_option_buttons_counter"

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/DividerPanel;->-wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-set3(Lcom/android/systemui/stackdivider/DividerPanel;I)I

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
