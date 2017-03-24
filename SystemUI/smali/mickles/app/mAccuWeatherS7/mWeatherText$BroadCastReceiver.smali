.class Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "mWeatherText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmickles/app/mAccuWeatherS7/mWeatherText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;


# direct methods
.method private constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherText;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmickles/app/mAccuWeatherS7/mWeatherText;Lmickles/app/mAccuWeatherS7/mWeatherText$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherText;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherText;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmickles/app/mAccuWeatherS7/mWeatherText;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherText;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherText;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    # getter for: Lmickles/app/mAccuWeatherS7/mWeatherText;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmickles/app/mAccuWeatherS7/mWeatherText;->access$100(Lmickles/app/mAccuWeatherS7/mWeatherText;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmickles/app/mAccuWeatherS7/mWeatherText;->getWeatherTextS7(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherText;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherText$BroadCastReceiver;->this$0:Lmickles/app/mAccuWeatherS7/mWeatherText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherText;->setVisibility(I)V

    goto :goto_0
.end method
