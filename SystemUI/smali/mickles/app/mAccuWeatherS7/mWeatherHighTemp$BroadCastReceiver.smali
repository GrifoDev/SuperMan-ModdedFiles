.class Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherHighTemp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    invoke-static {v4}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->getHighTemperatureS7(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    iget-object v5, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    invoke-static {v5}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->getTempScaleS7(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->getTemp(Ljava/lang/Float;I)I

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

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;->setVisibility(I)V

    goto :goto_0
.end method
