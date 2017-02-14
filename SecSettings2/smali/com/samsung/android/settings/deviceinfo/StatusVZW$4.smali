.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;
.super Landroid/database/ContentObserver;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get9(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)V

    goto :goto_0
.end method
