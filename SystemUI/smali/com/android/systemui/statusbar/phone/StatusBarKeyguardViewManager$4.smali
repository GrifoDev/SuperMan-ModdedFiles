.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardOccluded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    return-void
.end method
