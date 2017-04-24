.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-wrap0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05a6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
