.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;
.super Landroid/telephony/PhoneStateListener;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V

    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateSignalStrength(IILandroid/telephony/SignalStrength;)V

    :cond_0
    return-void
.end method
