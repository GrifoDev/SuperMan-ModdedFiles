.class Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherIcon;Lmickles/app/mAccuWeatherS7/mWeatherIcon$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-static {v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getSunRiseTimeS7(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getSunSetTimeS7(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->isDayS7(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-static {v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getWeatherIconS7(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageLevel(I)V

    :goto_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget v1, v1, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->Res_drawable_weather_level_analog:I

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageResource(I)V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    invoke-static {v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getWeatherIconS7(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageLevel(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setVisibility(I)V

    goto :goto_1
.end method
