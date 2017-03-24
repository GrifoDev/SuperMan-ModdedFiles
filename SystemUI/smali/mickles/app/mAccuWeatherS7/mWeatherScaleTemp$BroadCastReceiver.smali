.class Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherScaleTemp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->getTempScaleS7(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;->setVisibility(I)V

    goto :goto_1
.end method
