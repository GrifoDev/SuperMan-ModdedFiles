.class Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherUpdateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->getSunSetTimeS7(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    invoke-virtual {v3}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherUpdateTime;->setVisibility(I)V

    goto :goto_0
.end method
