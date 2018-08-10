.class Lcom/android/systemui/qs/bar/BrightnessBar$2$1;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;->this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBrightnessOnTopAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;->this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBrightnessOnTopAvailable()Z

    move-result v0

    return v0
.end method

.method public setAutoBrightness(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;->this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setAutoBrightnessControl(Z)Z

    move-result v0

    return v0
.end method

.method public setBrightnessOnTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;->this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-wrap0(Lcom/android/systemui/qs/bar/BrightnessBar;Z)V

    return-void
.end method

.method public setDeatilShowing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$2$1;->this$1:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/BrightnessBar;->-set2(Lcom/android/systemui/qs/bar/BrightnessBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
