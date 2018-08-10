.class Lcom/android/systemui/statusbar/phone/StatusBar$32;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverState(ZZI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_0
.end method
