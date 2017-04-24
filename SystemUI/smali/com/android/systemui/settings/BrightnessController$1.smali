.class Lcom/android/systemui/settings/BrightnessController$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap2(Lcom/android/systemui/settings/BrightnessController;)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap4(Lcom/android/systemui/settings/BrightnessController;)V

    return-void
.end method
