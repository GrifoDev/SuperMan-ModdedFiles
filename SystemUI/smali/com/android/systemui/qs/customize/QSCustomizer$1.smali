.class Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    return-void
.end method
