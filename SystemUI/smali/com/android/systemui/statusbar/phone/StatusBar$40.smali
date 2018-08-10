.class Lcom/android/systemui/statusbar/phone/StatusBar$40;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyguardBar()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method public getPhoneBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStackScroller()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    return-object v0
.end method
