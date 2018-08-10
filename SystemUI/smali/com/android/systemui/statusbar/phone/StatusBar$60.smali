.class Lcom/android/systemui/statusbar/phone/StatusBar$60;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$60;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$60;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$60;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$60;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    const/16 v1, -0x60

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_0
    return-void
.end method
