.class Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherSunRise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherSunRise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherSunRise;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherSunRise;Lmickles/app/mAccuWeatherS7/mWeatherSunRise$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherSunRise;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherSunRise;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherSunRise;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->getSunRiseTimeS7(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    invoke-virtual {v3}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSunRise$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherSunRise;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSunRise;->setVisibility(I)V

    goto :goto_0
.end method
