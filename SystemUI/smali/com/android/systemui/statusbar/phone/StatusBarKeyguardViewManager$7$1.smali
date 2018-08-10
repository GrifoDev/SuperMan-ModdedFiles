.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method
