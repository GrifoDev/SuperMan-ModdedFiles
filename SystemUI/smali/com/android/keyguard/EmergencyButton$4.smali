.class Lcom/android/keyguard/EmergencyButton$4;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get1(Lcom/android/keyguard/EmergencyButton;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
