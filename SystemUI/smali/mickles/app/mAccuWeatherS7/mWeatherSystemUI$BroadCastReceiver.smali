.class Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherSystemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;

    invoke-virtual {v0}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->updateWeather()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->setVisibility(I)V

    goto :goto_0
.end method
