.class Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherCurrentTemp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->getCurrentTemperatureS7(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    iget-object v5, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    invoke-static {v5}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->getTempScaleS7(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->getTemp(Ljava/lang/Float;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "color_temp"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;->setVisibility(I)V

    goto :goto_0
.end method
