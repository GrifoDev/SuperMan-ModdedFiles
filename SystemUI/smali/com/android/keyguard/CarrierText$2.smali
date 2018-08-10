.class Lcom/android/keyguard/CarrierText$2;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText()V

    return-void
.end method
